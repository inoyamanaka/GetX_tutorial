import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/counter_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: counterC.isDark.value ? ThemeData.light() : ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final c = Get.find<CounterController>();
  final c_orang = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Obx(
        () => Text(
          "Nama : ${c_orang.name.nama}",
          style: TextStyle(fontSize: 35),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c_orang.ChangeUpper(),
      ),
    );
  }
}
