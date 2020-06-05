class BaseTag {
  String id;

  String title;

  BaseTag(this.id, this.title);

  BaseTag.fromjson(Map<String, dynamic> jsonObject) {
    this.id = jsonObject['id'];
    this.title = jsonObject['title'];
  }
}
