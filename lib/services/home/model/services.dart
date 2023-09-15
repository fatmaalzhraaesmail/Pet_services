import 'package:flutter/material.dart';

class Services {
  final String? image;
  final String? ServicesName;

  Services({this.image, this.ServicesName});
  static List<Services> CreateServicesCard() {
    return [
      Services(
        image: 'assets/images/shop.png',
        ServicesName: 'Shop',
      ),
      Services(
        image: 'assets/images/services.png',
        ServicesName: 'services',
      ),
      Services(
        image: 'assets/images/shop.png',
        ServicesName: 'Shop',
      ),
    ];
  }
}
