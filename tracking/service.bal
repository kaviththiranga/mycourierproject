import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "tracking",
    id: "tracking-6f8e4ff6-2ad8-4170-8c4e-62e27de8eca0"
}
service / on new http:Listener(9090) {

    resource function get trackings/[string id]() returns error?|json {

    }

    resource function post tracking(@http:Payload json payload) returns error?|http:Created {
        
    }
}
