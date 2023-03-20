class UserModel {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String? image;
  final String gender;
  final String country;
  final String dob;
  final String lat;
  final String long;
  final List<String>? intrests;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      this.image,
      required this.gender,
      required this.dob,
      required this.country,
      required this.lat,
      required this.long,
      this.intrests});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        image: json['image'],
        gender: json['gender'],
        dob: json['dob'],
        country: json['country'],
        lat: json['lat'],
        long: json['long'],
        intrests: json['intrest']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'image': image,
        'gender': gender,
        'dob': dob,
        'country': country,
        'lat': lat,
        'long': long,
        'intrests': intrests
      };
}
