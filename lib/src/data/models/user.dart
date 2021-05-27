class User {
  String id;
  String email;
  String? firstName;
  String? lastName;
  DateTime? birthday;

  User(
      {required this.id,
      required this.email,
      this.firstName,
      this.lastName,
      this.birthday});
}
