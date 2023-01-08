class ServicesModel {
  final String imgPath1;
  final String itemText;

  ServicesModel({required this.imgPath1, required this.itemText});
}

List<ServicesModel> services = [
  ServicesModel(
      imgPath1: "assets/images/cropedEthioTelLogo.png",
      itemText: "Airtime/Packages"),
  ServicesModel(imgPath1: "assets/images/stars.png", itemText: "Saved Users"),
  ServicesModel(
      imgPath1: "assets/images/control_point_duplicate.png",
      itemText: "Deposit"),
  ServicesModel(imgPath1: "assets/images/toll.png", itemText: "Withdraw"),
];
