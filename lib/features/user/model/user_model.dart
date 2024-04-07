class UserModel {
  final String fullName;
  final int age;
  final int distance;
  final bool story;
  final bool dot;
  final bool vip;
  final bool verified;
  final String? image;
  final String bio;
  final int likes;
  final bool isLiked;
  final bool boos;

  UserModel({
    required this.fullName,
    required this.age,
    required this.distance,
    required this.story,
    required this.dot,
    required this.vip,
    required this.verified,
    this.image,
    this.bio = "Cat-lover, Designer, Weekend fan and biologist",
    this.likes = 782,
    this.boos = false,
    this.isLiked = false,
  });
}
