import ballerina/http;
import ballerinax/trigger.shopify;

configurable shopify:ListenerConfig config = ?;

listener shopify:Listener webhookListener = new (config);

@display {
    label: "OrdersService",
    id: "OrdersService"
}
service shopify:OrdersService on webhookListener {

    @display {
        label: "Shipping",
        id: "sd-5da62e5d-e189-46ae-ab49-d73fb1b2faf3"
    }
    http:Client serviceClient;

    function init() returns error? {
        self.serviceClient = check new ("");
    }

    remote function onOrdersCreate(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersCancelled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersFulfilled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersPaid(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersPartiallyFulfilled(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
    remote function onOrdersUpdated(shopify:OrderEvent event) returns error? {
        // Not Implemented
    }
}

@display {
    label: "CustomersService",
    id: "CustomersService"
}
service shopify:CustomersService on webhookListener {
    remote function onCustomersCreate(shopify:CustomerEvent event) returns error? {
        // Not Implemented
    }
    remote function onCustomersDisable(shopify:CustomerEvent event) returns error? {
        // Not Implemented
    }
    remote function onCustomersEnable(shopify:CustomerEvent event) returns error? {
        // Not Implemented
    }
    remote function onCustomersUpdate(shopify:CustomerEvent event) returns error? {
        // Not Implemented
    }
    remote function onCustomersMarketingConsentUpdate(shopify:CustomerEvent event) returns error? {
        // Not Implemented
    }
}

@display {
    label: "ProductsService",
    id: "ProductsService"
}
service shopify:ProductsService on webhookListener {
    remote function onProductsCreate(shopify:ProductEvent event) returns error? {
        // Not Implemented
    }
    remote function onProductsUpdate(shopify:ProductEvent event) returns error? {
        // Not Implemented
    }
}

@display {
    label: "FulfillmentsService",
    id: "FulfillmentsService"
}
service shopify:FulfillmentsService on webhookListener {
    remote function onFulfillmentsCreate(shopify:FulfillmentEvent event) returns error? {
        // Not Implemented
    }
    remote function onFulfillmentsUpdate(shopify:FulfillmentEvent event) returns error? {
        // Not Implemented
    }
}

