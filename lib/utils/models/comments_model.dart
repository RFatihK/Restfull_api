class CommentsModel {
  String? body;
  String? email;
  int? id;
  String? name;
  int? postId;

  CommentsModel({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  CommentsModel.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }
}
