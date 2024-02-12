class PersonalInfo {
  final String name, email, phone, address, status, dob;

  PersonalInfo(
      {required this.status,
      required this.dob,
      required this.phone,
      required this.email,
      required this.name,
      required this.address});
}

class About {
  final String about, strength, weakness, hobbies, languages;

  About(
      {required this.about,
      required this.strength,
      required this.weakness,
      required this.hobbies,
      required this.languages});
}
