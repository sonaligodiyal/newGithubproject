import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sonalilasttest/feature/number/controller/num_controller.dart';



class NumBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NumController());

  }
}