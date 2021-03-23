import ballerina/grpc;

listener grpc:Listener ep = new (9090);

@grpc:ServiceDescriptor {
    descriptor: ROOT_DESCRIPTOR,
    descMap: getDescriptorMap()
}
service "EventStore" on ep {
    
    remote function GetEvents(EventFilter value) returns EventResponse|error {
        // Implementation goes here.
    }
    remote function CreateEvent(Event value) returns Response|error {
        // Implementation goes here.
    }
}

