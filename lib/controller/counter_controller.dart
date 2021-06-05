import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var _counter = 0.obs;
  get counter => _counter.value;
  set counter(newValue) {
    _counter.value = newValue;
  }

  void add() {
    counter += 1;
    Get.snackbar("Sayı Arttırıldı", "Artı butonuna basılınca sayı arttırıldı",
        duration: Duration(seconds: 2));
  }

  void remove() {
    counter -= 1;
    Get.showSnackbar(GetBar(
      title: "Sayı Azaltıldı",
      message: "Eksi butonuna basılınca sayı azaltıldı",
      duration: Duration(seconds: 2),
      isDismissible: true,
      dismissDirection: SnackDismissDirection.VERTICAL,
    ));
  }
}
