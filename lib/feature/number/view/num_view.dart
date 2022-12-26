import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sonalilasttest/feature/number/controller/num_controller.dart';
import '../../../../core/routes_constant.dart';


class NumView extends GetView<NumController> {




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
                  height: 10,
                ),

                Container(
                  margin: EdgeInsets.only(top:20, left:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){
                        Get.toNamed(RoutesConstant.dashboardthird);
                      }, icon: Icon(Icons.arrow_back_ios_new_sharp,size: 40,)),

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CREATE ACCOUNT", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 10,
                      ),
                      Text("ENTER YOUR PHONE NUMBER",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 6,
                      ),
                      Text("TO SEND OTP",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ],

                  ),
                ),

                SizedBox(
                  height: 60,
                ),

                Column(
                  children: [
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      // key: controller.NumFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width*0.9,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue,width: 2,),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,


                              cursorColor: Colors.teal,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                              decoration: const InputDecoration(
                                hintText: "ENTER PHONE NUMBER",
                                helperStyle: TextStyle(color: Colors.teal),
                                border: InputBorder.none,

                              ),
                            ),
                          ),

                          SizedBox(
                            height:80,
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
                                  Get.toNamed(RoutesConstant.otp);

                                },
                                child: Text("Send OTP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),


                          Container(
                            margin: EdgeInsets.only(top:10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("------ OR ------",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                              ],
                            ),
                          ), SizedBox(
                            height: 10,
                          ),

                          Container(
                            width: size.width * 0.8,
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.symmetric(vertical: 2,),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.blue,width: 2,),
                            ),

                            child: FloatingActionButton.extended(


                              onPressed: (){
                                Get.toNamed(RoutesConstant.dashboardthird);
                              },
                              icon: Image.asset('assests/download.png',
                                height: 32,
                                width: 32,),

                              label: Text("SIGNUP",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.blue,),),
                              backgroundColor: Colors.white,
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}