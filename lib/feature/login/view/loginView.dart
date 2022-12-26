import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sonalilasttest/feature/login/controller/loginController.dart';


class LoginView extends GetView<LoginController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Image.asset("assests/LOGIN.png",height: 300,width: 400,),
                  Form(
                    key:controller.myloginkey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 22),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,

                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: "Enter Email ID/Phone Number ",
                              border:OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty|| value==10) {
                                return 'Enter the valid email or phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 22),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Enter Password ",
                              border:OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter the Valid Password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forgot Password",style:TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,fontSize:15
                            ),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 320,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {
                                controller.checkconn();
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: const Text('LOGIN')),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Create an account ",style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,fontSize:25
                            ),),

                            Text("SIGNUP",style:TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,fontSize:30
                            ),),
                          ],
                        ),
                      ],

                    ),),

                ],
              ),


            ),
          ),
        ),
      ),
    );
  }

}