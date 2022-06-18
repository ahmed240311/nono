import 'package:get/get.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Auth());
  }
}
