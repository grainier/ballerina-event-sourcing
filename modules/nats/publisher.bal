import ballerina/io;
import ballerinax/stan;

public function main() returns error? {
    string message = "Hello from Ballerina";
    stan:Client stanClient = check new;

    string|stan:Error res = stanClient->publishMessage({
        content: <@untainted>message.toBytes(),
        subject: "demo"
    });
    if (res is stan:Error) {
        io:println("Error occurred while producing the message.");
    } else {
        io:println("GUID " + res + " received for the produced message.");
    }
}
