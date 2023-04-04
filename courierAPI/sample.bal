import ballerina/http;
import ballerina/graphql;

# A service representing a network-accessible GraphQL API
@display {
    label: "courierAPI",
    id: "courierAPI-4378b766-d354-4593-bcf2-dfff4a7915a0"
}
service / on new graphql:Listener(8090) {
    @display {
        label: "tracking",
        id: "tracking-6f8e4ff6-2ad8-4170-8c4e-62e27de8eca0"
    }
    http:Client serviceClient1;

    @display {
        label: "Shipping",
        id: "sd-5da62e5d-e189-46ae-ab49-d73fb1b2faf3"
    }
    http:Client serviceClient;

    function init() returns error? {
        self.serviceClient1 = check new ("");
        self.serviceClient = check new ("");
    }

    # A resource for generating greetings
    # Example query:
    # query GreetWorld{ 
    # greeting(name: "World") 
    # }
    # Curl command: 
    # curl -X POST -H "Content-Type: application/json" -d '{"query": "query GreetWorld{ greeting(name:\"World\") }"}' http://localhost:8090
    #
    # + name - the input string name
    # + return - string name with greeting message or error
    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
