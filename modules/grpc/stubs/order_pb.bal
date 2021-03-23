
public type OrderCreateCommand record {|
    string order_id = "";
    string customer_id = "";
    string status = "";
    int created_on = 0;
    string restaurant_id = "";
    float amount = 0.0f;
    OrderItem[] order_items = [];
|};


public type OrderItem record {|
    string code = "";
    string name = "";
    float unit_price = 0.0f;
    int quantity = 0;
|};


public type OrderPaymentDebitedCommand record {|
    string order_id = "";
    string customer_id = "";
    float amount = 0.0f;
|};
