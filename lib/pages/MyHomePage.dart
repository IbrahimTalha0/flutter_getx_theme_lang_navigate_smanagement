
// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_getx_theme_lang_navigate_smanagement/controller/counter_controller.dart';
import 'package:flutter_getx_theme_lang_navigate_smanagement/pages/showCounter.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  CounterController _controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "button_text".tr,
              style: TextStyle(fontSize: 30),
            ),
            Obx(() => Text(
                  "counter".tr + _controller.counter.toString(),
                  style: TextStyle(fontSize: 30),
                )),
            GetX<CounterController>(
                builder: (_controller2) => Text(
                      "counter".tr + _controller2.counter.toString(),
                      style: TextStyle(fontSize: 30),
                    )),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1",
            onPressed: () {
              _controller.add();
              print(_controller.counter);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "2",
            onPressed: () {
              _controller.remove();
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: "3",
            onPressed: () {
              Get.updateLocale(Get.locale == Locale("tr", "TR") ? Locale("en", "US"):Locale("tr", "TR"));
            }, child: Icon(Icons.language)),
          FloatingActionButton(
            heroTag: "4",
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: Icon(Icons.change_circle)),
                        FloatingActionButton(
                          heroTag: "5",
              onPressed: () {
                Get.to(ShowCounter());
              },
              child: Icon(Icons.last_page_sharp)),
        ],
      ),
    );
  }
}
