import ballerinax/mysql;
import ballerinax/mysql.driver as _;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.

@display {
    label: "Shipping",
    id: "sd-5da62e5d-e189-46ae-ab49-d73fb1b2faf3"
}

service / on new http:Listener(9090) {
    @display {
        label: "mysql",
        id: "mysql-b7b105bf-0f7e-4b80-b136-e3dd142bbd04"
    }
    mysql:Client mysqlEp;

    @display {
        label: "tracking",
        id: "tracking-6f8e4ff6-2ad8-4170-8c4e-62e27de8eca0"
    }
    http:Client serviceClient;

    function init() returns error? {
        self.mysqlEp = check new ();
        self.serviceClient = check new ("");
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function post shipment(@http:Payload string payload) returns string|error {
        return "Tracking started for " + payload;
    }

    resource function get shipments/[string id]() returns error?|string {
        return "Shipment details";
    }
}
