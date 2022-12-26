import 'package:get/get.dart';
import 'package:sonalilasttest/feature/signup/controller/signup_controller.dart';

class Signupbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Signupcontroller());
  }
}