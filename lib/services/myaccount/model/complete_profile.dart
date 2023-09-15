import 'package:flutter/material.dart';

class CompleteProfile {
  final String? image;
  final String? CompleteProfileName;

  CompleteProfile({this.image, this.CompleteProfileName});
  static List<CompleteProfile> CreateCompleteProfileCard() {
    return [
      CompleteProfile(
        image: 'assets/images/address-removebg-preview.png',
        CompleteProfileName: 'Address',
      ),
      CompleteProfile(
        image: 'assets/images/payment-removebg-preview.png',
        CompleteProfileName: 'Payment',
      ),
      CompleteProfile(
        image: 'assets/images/history-removebg-preview.png',
        CompleteProfileName: 'History',
      ),
    ];
  }
}
