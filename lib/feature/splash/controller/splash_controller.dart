import 'dart:async';
import 'package:get/get.dart';

import 'package:sonalilasttest/core/routes_constant.dart';


class SplashController extends GetxController{

  @override
  void onInit() {

    Timer(Duration(seconds:2), (){
      Get.offAllNamed(RoutesConstant.slider);
    });
  }

// Future<void> getdata() async {
// var prefs=await SharedPreferences.getInstance();
// islogin=prefs.getBool('islogin')!;
// }

}