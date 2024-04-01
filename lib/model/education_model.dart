class EducationModel {
  final String cource;
  final String college;
  final String year;
  final String percentage;

  EducationModel({
    required this.cource,
    required this.college,
    required this.year,
    required this.percentage,
  });
}

List<EducationModel> educationDetails = [
  EducationModel(
    cource: "Diploma in Computer Engineering",
    college: "Maharaja’s Technological Institute Thrissur, Kerala",
    year: "2020-2023",
    percentage: "74 %",
  ),
  EducationModel(
    cource: "Kerala HSE -Commerce ",
    college: "G.H.S.S Nandikkara, Kerala",
    year: "2018-2020",
    percentage: "80 %",
  ),
  EducationModel(
    cource: "Secondary School Leaving Certificate",
    college: "Sree Krishna High School Mattathur, kerala",
    year: "2018",
    percentage: "92 %",
  ),
];
