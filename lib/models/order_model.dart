class OrderModel {
  String orderid;
  String userid;
  int orderPrice;

  OrderModel({
    required this.orderid,
    required this.userid,
    required this.orderPrice,
  });

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      orderid: map['orderid'],
      userid: map['userid'],
      orderPrice: map['orderPrice'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderid': orderid,
      'userid': userid,
      'orderPrice': orderPrice,
    };
  }
}
