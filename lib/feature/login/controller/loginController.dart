
import 'dart:io';

//import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sonalilasttest/core/routes_constant.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> myloginkey = GlobalKey<FormState>();
  RxBool obvalue = false.obs;

  void checkconn()async{
    try{
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty){
        Get.snackbar("Connectivity", "Net connected",
            snackPosition: SnackPosition.TOP);
        login();
      }
    } on SocketException catch(_){
      Get.snackbar("Warning", "Net not connected",
          snackPosition: SnackPosition.BOTTOM);
    }

    // login();
  }

  login() async {

    var isValide = myloginkey.currentState?.validate();
    if (isValide == true) {
      Get.snackbar("alert", "Login successful",
          snackPosition: SnackPosition.TOP);
    }
    else {
      Get.snackbar("Warning", "Invalid credential",
          snackPosition: SnackPosition.BOTTOM);
    }
    LoginAPI(){
      Get.toNamed(RoutesConstant.Login);
    }
  }

}