class BasePayment {
  String paymentID;

  double amount;
  String paymentMethod;
  DateTime paymentDate;

  BasePayment(
      this.paymentID, this.amount, this.paymentMethod, this.paymentDate);

  BasePayment.fromJson(Map<String, dynamic> jsonObject) {
    this.paymentID = jsonObject['payment_id'];
    this.amount = jsonObject['amount'];
    this.paymentMethod = jsonObject['payment_method'];
    this.paymentDate = DateTime.parse(jsonObject['payment_date']);
  }
}
