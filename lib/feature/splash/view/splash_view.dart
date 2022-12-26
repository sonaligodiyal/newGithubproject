import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sonalilasttest/feature/splash/controller/splash_controller.dart';


// class SplashView extends GetView<SplashController>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }
class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text(
              'WELCOME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 80,
                // fontFamily: GoogleFonts.pacifico().fontFamily,
              ),
            )),
      ),
    );
  }
}