abstract class BaseDiscount {
  double minQuantity;
  double maxQuantity;
  double amount;
  DateTime endDateTime;

  BaseDiscount(
      this.minQuantity, this.maxQuantity, this.amount, this.endDateTime);

  BaseDiscount.fromjson(Map<String, dynamic> jsonObject) {
    this.minQuantity = jsonObject['min_quantity'];
    this.maxQuantity = jsonObject['max'];
    this.amount = jsonObject['amount'];
    this.endDateTime = DateTime.parse(jsonObject['end_date_time']);
  }
}
