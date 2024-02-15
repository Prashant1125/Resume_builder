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
  final String about, strength, weakness, hobbies, languages, skills;

  About(
      {required this.about,
      required this.strength,
      required this.weakness,
      required this.skills,
      required this.hobbies,
      required this.languages});
}

class Education10 {
  final String standard, board, school, result, year;

  Education10(
      {required this.standard,
      required this.board,
      required this.school,
      required this.result,
      required this.year});
}

class Education12 {
  final String standard, board, school, result, year;

  Education12(
      {required this.standard,
      required this.board,
      required this.school,
      required this.result,
      required this.year});
}

class GraduationUg {
  final String course, institute, university, result, year;

  GraduationUg(
      {required this.course,
      required this.university,
      required this.result,
      required this.institute,
      required this.year});
}

class GraduationPg {
  final String course, institute, university, result, year;

  GraduationPg(
      {required this.course,
      required this.institute,
      required this.university,
      required this.result,
      required this.year});
}
