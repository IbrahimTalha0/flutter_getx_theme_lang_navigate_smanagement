// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_getx_theme_lang_navigate_smanagement/controller/counter_controller.dart';
import 'package:flutter_getx_theme_lang_navigate_smanagement/pages/MyHomePage.dart';
import 'package:get/get.dart';

import 'Utils/language.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // your translations
      locale:
          Get.deviceLocale, // translations will be displayed in that locale
      fallbackLocale: Locale('tr',
          'TR'), // specify the fallback locale in case an invalid locale is selected.
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
