import 'package:get/get.dart';
import 'package:sonalilasttest/feature/slider/controller/slidercontroller.dart';

class Sliderbinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SliderController());
  }

}