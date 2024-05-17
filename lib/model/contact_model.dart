// ignore_for_file: public_member_api_docs, sort_constructors_first
class ContactModel {
  final String icon;
  final String title;
  final String data;

  ContactModel({
    required this.icon,
    required this.title,
    required this.data,
  });
}

// project details
List<ContactModel> contactDetails = [
  ContactModel(
    icon: "assets/phone.png",
    title: "Phone Number",
    data: "6238166681",
  ),
  ContactModel(
    icon: "assets/mail.png",
    title: "Mail Id",
    data: "abhinandhanapu@gmail.com",
  ),
  ContactModel(
    icon: "assets/linkedin.png",
    title: "LinkedIn",
    data: "@abhinandhana pu",
  ),
  ContactModel(
    icon: "assets/github.png",
    title: "Github",
    data: "@AbhinandhanaPU",
  ),
];
