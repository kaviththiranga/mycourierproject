import ballerinax/mysql;
import ballerinax/mysql.driver as _;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "shipping",
    id: "shipping-de2e7b07-1f25-4db3-be69-108cc08d2e6a"
}
service / on new http:Listener(9090) {

    @display {
        label: "mysql",
        id: "mysql-9e593e68-c1ca-4efb-9a4b-1a570f7c37d3"
    }
    mysql:Client mysqlEp;

    function init() returns error? {
        self.mysqlEp = check new ();
    }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
