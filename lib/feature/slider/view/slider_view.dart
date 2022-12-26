import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sonalilasttest/core/routes_constant.dart';
import 'package:sonalilasttest/feature/slider/controller/slidercontroller.dart';


class SliderView extends GetView<SliderController>{
  List<PageViewModel> getpages(){
    return [

      PageViewModel(
        image:Image.asset("assests/ONBOARDING1.jpg"),
        title: "PLANNING",decoration: PageDecoration(titleTextStyle:TextStyle(color:Colors.green,fontSize: 50,fontWeight: FontWeight.w800) ),
        body: "lorem ipsum is simply"
            "text of the printing"
            "typesetting industry",
        footer:
        SizedBox(
          width: 150,
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                controller.nextto();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text('NEXT')),
        ),


      ),
      PageViewModel(
        image:Image.asset("assests/ONBOARDING2.jpg"),
        title: "STARTUP",decoration: PageDecoration(titleTextStyle:TextStyle(color:Colors.green,fontSize: 50,fontWeight: FontWeight.w800) ),
        body: "lorem ipsum is simply "
            "text of the printing"
            " typesetting industry",
        footer:
        SizedBox(
          width: 150,
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                controller.nextto();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text('NEXT')),
        ),


      ),
      PageViewModel(
        image:Image.asset("assests/ONBOARDING3.jpg"),
        title: "SUCCESS",decoration: PageDecoration(titleTextStyle:TextStyle(color:Colors.green,fontSize: 50,fontWeight: FontWeight.w800) ),
        body: "lorem ipsum is simply"
            "text of the printing"
            "typesetting industry",
        footer:
        SizedBox(
          width: 150,
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                controller.nextto();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text('NEXT')),
        ),


      )

    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: getpages(),
        showSkipButton: true,
        skip: const Icon(Icons.skip_next),
        next: const Text("Next"),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w700)),
        onDone: () {
          // On Done button pressed
          Get.toNamed(RoutesConstant.Login);
        },
        onSkip: () {
          Get.toNamed(RoutesConstant.Login);
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          ),
        ),
      ),

    );
  }

}