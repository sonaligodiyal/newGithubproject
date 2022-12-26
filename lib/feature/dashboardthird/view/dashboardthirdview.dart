import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sonalilasttest/feature/dashboardthird/controller/dashboardthirdcontroller.dart';


class Dashboardthird extends GetView<Dashboardthirdcontroller>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Signup"),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 350,
            height: Get.height,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.star,
              children: [
                Row(
                  mainAxisAlignment:  MainAxisAlignment.start,
                  children: [
                    Text("ENTER DETAILS",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w800),),
                  ],
                ),

                SizedBox(height: 30,),

                Form(
                  key:controller.SignupFormKey,

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(


                          decoration: InputDecoration(
                            // labelText: "Name",
                            hintText: "Enter Name",
                            border: OutlineInputBorder(),
                          ),
                          controller: controller.NameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(


                          decoration: InputDecoration(
                            // labelText: "Name",
                            hintText: "Enter Email Id",
                            border: OutlineInputBorder(),
                          ),
                          controller: controller.emailId,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your Email';
                            }
                            return null;
                          },
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(


                          decoration: InputDecoration(
                            // labelText: "Name",
                            hintText: "7566697483",
                            border: OutlineInputBorder(),
                          ),
                          controller: controller.password,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter phone number';
                            }
                            return null;
                          },

                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(


                          decoration: InputDecoration(
                            // labelText: "Name",
                            hintText: "Enter password",
                            border: OutlineInputBorder(),
                          ),
                          controller: controller.phoneNumber,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter correct password';
                            }
                            return null;
                          },
                        ),
                      ),


                      SizedBox(
                        height:54,
                        width:284,

                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade600, //background color of button
                                side: BorderSide(width:1), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.all(20) //content padding inside button
                            ),
                            onPressed: (){

                              controller.signupAPI1();
                              controller.tologin();


                            },
                            child: Text("SUBMIT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700))
                        ),
                      ),



                      //

                    ],
                  ),),
                SizedBox(height: 40,),

                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}