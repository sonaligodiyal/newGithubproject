
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class Dashboardthirdcontroller extends GetxController{

GlobalKey<FormState> SignupFormKey = GlobalKey<FormState>();

late TextEditingController NameController =  TextEditingController();
late TextEditingController emailId =  TextEditingController();
late TextEditingController phoneNumber =  TextEditingController();
late TextEditingController password =  TextEditingController();
//late SignupRepo _signupRepo;
// List<FetchDataResponse>internDataList = <FetchDataResponse>[];


@override
void onInit() async{
// TODO: implement onInit

super.onInit();

}


tologin(){
// Get.toNamed(Routes.login);
}
// toprofile(){
//   Get.toNamed(Routes.profile);
// }

signupAPI1() async {
var isValide = SignupFormKey.currentState?.validate();
if (isValide == true) {
Get.snackbar("alert", "Login successful",
snackPosition: SnackPosition.TOP);
}
else {
Get.snackbar("Warning", "Invalid credential",
snackPosition: SnackPosition.BOTTOM);
}
}
}