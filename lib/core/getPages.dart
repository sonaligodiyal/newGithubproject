import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sonalilasttest/core/routes_constant.dart';
import 'package:sonalilasttest/feature/dashboardthird/binding/dashboardthirdbinding.dart';
import 'package:sonalilasttest/feature/dashboardthird/view/dashboardthirdview.dart';
import 'package:sonalilasttest/feature/login/binding/loginBinding.dart';
import 'package:sonalilasttest/feature/login/view/loginView.dart';
import 'package:sonalilasttest/feature/number/binding/num_binding.dart';
import 'package:sonalilasttest/feature/opt/binding/otp_binding.dart';
import 'package:sonalilasttest/feature/opt/view/otp_view.dart';
import 'package:sonalilasttest/feature/signup/binding/signup_binding.dart';
import 'package:sonalilasttest/feature/signup/view/signup_view.dart';
import 'package:sonalilasttest/feature/slider/binding/sliderbinding.dart';
import 'package:sonalilasttest/feature/slider/view/slider_view.dart';
import 'package:sonalilasttest/feature/splash/binding/splash_binding.dart';
import 'package:sonalilasttest/feature/splash/view/splash_view.dart';

import '../feature/number/view/num_view.dart';


List<GetPage> getpages =[


GetPage(name: RoutesConstant.spl,
page:()=> SplashView(),
binding: SplashBinding(),
),

  GetPage(
      name: RoutesConstant.signup,
      page: () => Signup(),
      binding: Signupbinding()
  ),

  GetPage
    (
      name: RoutesConstant.Login,
      page: ()=> LoginView(),
      binding: LoginBinding()
  ),

  GetPage(
      name: RoutesConstant.slider,
      page: () => SliderView(),
      binding: Sliderbinding()
  ),

  GetPage(
      name: RoutesConstant.dashboardthird,
      page: () => Dashboardthird(),
      binding: DashboardthirdBinding()
  ),



  GetPage(
      name: RoutesConstant.num,
      page: () => NumView(),
      binding: NumBinding()
  ),
];