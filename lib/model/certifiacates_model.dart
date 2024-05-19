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
    link:
        "https://drive.google.com/file/d/1NRoIi2-ZbZcT6BONhUM764LZofbei9D2/view?usp=sharing",
  ),
  CertificateModel(
    title: "Get Started with Figma",
    sub: "Coursera",
    time: "02-Feb- 2024",
    link:
        "https://www.coursera.org/account/accomplishments/records/G64HK2DYLLK4",
  ),
  CertificateModel(
    title: "Interndhip on Machine Learning",
    sub: "Grapegenix Software Solutions ,Thrissur",
    time: "",
    link:
        "https://drive.google.com/file/d/1NO8NzAv1YgGUkcgYE12GYehRIovNagyk/view?usp=sharing",
  ),
  CertificateModel(
    title: "Bootcamp of software testing ",
    sub: "ICT Acadamy Kalamassery , Kochi",
    time: "",
    link:
        "https://drive.google.com/file/d/1NR3EUa0K1QYEICNeb_lzIqbXFwi4lhBp/view?usp=sharing",
  ),
];
