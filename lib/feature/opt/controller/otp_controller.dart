import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../core/routes_constant.dart';

class OtpController extends GetxController {

 IconButton(){
    Get.toNamed(RoutesConstant.otp);
  }
}