class Address {

  String streetName;
  String streetNumber ;
  String country;
  String city;
  String state;
  String postCode;

  Address.fromJson(Map<String,dynamic>jsonObject){
    this.streetName = jsonObject['street_name'];
    this.streetNumber = jsonObject['street_number'];
    this.country = jsonObject['country'];
    this.city = jsonObject['city'];
    this.state = jsonObject['state'];
    this.postCode = jsonObject['post_code'];

  }


}