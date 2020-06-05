abstract class BaseCategory{

  String id;
  String title;

  BaseCategory(this.id, this.title);

  BaseCategory.fromjson(Map<String,dynamic>jsonObject){

    this.id = jsonObject['id'] ;
    this.title = jsonObject['title'];
  }


}