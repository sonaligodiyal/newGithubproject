import 'package:get/get.dart';
import 'package:sonalilasttest/feature/dashboardthird/controller/dashboardthirdcontroller.dart';


class DashboardthirdBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Dashboardthirdcontroller());
  }

}