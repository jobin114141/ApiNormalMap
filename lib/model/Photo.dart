class Photo {
  int? userId;
  int? Id;
  String? title;
  String? body;
  Photo({this.Id, this.userId, this.body, this.title});
  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
      userId: json['userId'],
      Id: json['id'],
      title: json['title'],
      body: json['body']);
}
