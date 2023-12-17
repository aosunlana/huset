class AuthenticationResponse {
  int? id;
  String? name;
  String? email;
  String? token;

  AuthenticationResponse({this.id, this.name, this.email, this.token});

  AuthenticationResponse.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    email = json['Email'];
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Email'] = email;
    data['Token'] = token;
    return data;
  }
}
