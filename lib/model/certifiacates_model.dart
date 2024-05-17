class CertificateModel {
  final String title;
  final String sub;
  final String time;
  final String link;

  CertificateModel({
    required this.title,
    required this.sub,
    required this.time,
    required this.link,
  });
}

List<CertificateModel> certificates = [
  CertificateModel(
      title: "Android Flutter Appication Development",
      sub:
          "National Council for Technology and Training Luminar technolab, kerala",
      time: "Aug 2023 - Dec 2023",
      link: "link")
];
