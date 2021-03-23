import ballerina/io;
import ballerinax/stan;

listener stan:Listener lis = new;

@stan:ServiceConfig {subject: "demo"}
service stan:Service on lis {
    remote function onMessage(stan:Message message) {
        string|error messageData = string:fromBytes(message.content);
        if (messageData is string) {
            io:println("Received message: " + messageData);
        } else {
            io:println("Error occurred while obtaining message data.");
        }
    }
}

public function test() {
    
    
}
