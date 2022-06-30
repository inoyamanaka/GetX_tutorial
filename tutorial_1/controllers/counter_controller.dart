import 'package:get/get.dart';

class CounterController extends GetxController {
  // obs = observer yaitu ketika terjadi perubahan pada variabel counter akan terpantau
  var counter = 0.obs;
  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;

  void increment() => counter++;
  void decrement() => counter--;
}
