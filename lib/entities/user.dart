class User {
  int id = 0;
  String email = '';
  String username = '';
  String name = '';
  String lastName = '';
  String nickname = '';

  User(
      {required this.id,
      required this.email,
      required this.username,
      required this.name,
      required this.lastName,
      required this.nickname});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    username = json['username'];
    name = json['name'];
    lastName = json['last_name'];
    nickname = json['nickname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['username'] = username;
    data['name'] = name;
    data['last_name'] = lastName;
    data['nickname'] = nickname;
    return data;
  }
}
