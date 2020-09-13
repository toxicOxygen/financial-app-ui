import 'package:flutter/material.dart';

class UiControllerProvider extends ChangeNotifier {
  String selectedPaymentOption = "Tigo Cash";

  void setPaymentOption(String option) {
    selectedPaymentOption = option;
    notifyListeners();
  }
}
