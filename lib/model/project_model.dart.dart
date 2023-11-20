// ignore_for_file: public_member_api_docs, sort_constructors_first
class Project {
  final String? title, description, link, apkLink;
  Project({
    this.description,
    this.title,
    this.link,
    this.apkLink,
  });
}

List<Project> projects = [
  Project(
    title: "Payflex — Fintech Application ",
    description:
        "A fintech application that enables users to do transactions(send money, pay bills).",
    link: "https://github.com/SAnetwork2020/fintech_app",
    apkLink:
        "https://drive.google.com/file/d/1HIyOR2VoFBvPbJm2S3663XOuBXQ2e3up/view",
  ),
  Project(
    title: "TD Supper App - e-Commerce",
    description:
        "SuperApp allows you to buy electronic appliance and gadgets from smartphones to refrigerator, microwaves etc. from their store and also pay for the delivery of your product to your specify location.",
    link:
        "https://play.google.com/store/apps/details?id=com.app.super_app_customer&pli=1",
  ),
  Project(
    title: "Ecstasy - Fintech Application",
    description:
        "Ecstacy is fintech application where you can buy data bundles, airtime, pay bills(tv-sub, electricity etc) right from your smartphone with the app. ",
    link: "https://play.google.com/store/apps/details?id=com.softweb.ecstasy",
  ),
  Project(
    title: "GoFarmNg ",
    description:
        "GoFarmNg is responsive Mobile Application where Buyers and Sells meet for business transactions. It also allows an existing user to turn from buyer to and vice-versa",
    link: "https://github.com/GoFarmNg/GoFarmNG-2.0",
  ),
  Project(
    title: "All Chef App - Flutter UI ",
    description: "All Chef is Mobile Responsive Food Ordering Application",
    link: "https://github.com/SAnetwork2020/Complete-Food-Delivery-App",
  ),
];
