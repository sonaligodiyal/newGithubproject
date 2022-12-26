import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sonalilasttest/core/routes_constant.dart';
import 'package:sonalilasttest/feature/opt/controller/otp_controller.dart';


class OptView extends GetView<OtpController> {
  const OptView({super.key});



  @override
  Widget build(BuildContext context) {



    Size size = MediaQuery.of(context).size;

    return Scaffold(

      body: Center(

        child: SizedBox(
          width: double.infinity,
          height: size.height,

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: Column(

              children: [



                SizedBox(
                  height: 80,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("VERIFY", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 15,
                      ),
                      Text("WE HAVE SENT A VERIFCATION CODE",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 6,
                      ),
                      Text("TO  ENTERD PHONE NUMBER",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                    ],

                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                Row(
                  children: [

                    Form(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width*0.5,
                            margin: EdgeInsets.only(left: 50),
                            child: TextFormField(
                              cursorColor: Colors.teal,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                              decoration: const InputDecoration(
                                hintText: "ENTER PHONE NUMBER",
                                helperStyle: TextStyle(color: Colors.teal),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(onPressed: (){
                          //  Get.toNamed(RoutesConstant.dashboardthird);
                          }, icon: Icon(Icons.edit, color: Colors.blue,),),

                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                const Text("Send OTP",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
//child(Text"OR"),
                SizedBox(
                  height: 90,
                ),

                Container(
                  width: size.width*0.8,
                  child: ClipRRect(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal: 20,),),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: (){
                        Get.toNamed(RoutesConstant.dashboardthird);
                      },
                      child: Text("SIGNUP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
                    ),
                  ),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}