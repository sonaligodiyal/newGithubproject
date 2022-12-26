import 'package:get/get.dart';
import 'package:sonalilasttest/feature/login/controller/loginController.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}