import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sonalilasttest/core/getPages.dart';
import 'package:sonalilasttest/core/routes_constant.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:RoutesConstant.spl,
      getPages: getpages,

    );
  }
}
