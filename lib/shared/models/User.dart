import 'dart:convert';

class UserModel {
  String uid;
  String email;
  String username;
  String bio;
  String photoUrl;
  List<String> followers;
  List<String> following;
  UserModel({
    required this.bio,
    required this.followers,
    required this.following,
    required this.photoUrl,
    required this.username,
    required this.uid,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "username": username,
        "bio": bio,
        "photoUrl": photoUrl,
        "followers": followers,
        "following": following,
        "email": email,
      };

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      username: map['username'] ?? '',
      bio: map['bio'] ?? '',
      photoUrl: map['photoUrl'] ?? '',
      email: map['email'] ?? '',
      followers: map['followers'] ?? [],
      following: map['following'] ?? [],
    );
  }
}
