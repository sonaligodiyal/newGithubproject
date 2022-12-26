import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sonalilasttest/feature/signup/controller/signup_controller.dart';


class Signup extends GetView<Signupcontroller>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DASHBOARD"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("WELCOME",style: TextStyle(fontSize: 40,color: Colors.black),),
                  ],
                ),
                Image.asset("assests/LOGIN.png",height: 300,width: 400,),
                SizedBox(height: 70,),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        controller.gotologin();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text('LOGIN')),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 250,
                  height: 50,
                  child:   ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('SIGNUP',
                                  style:TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    onPressed: (){

                        controller.gotologin2();

                    },

                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.blue,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(40),
                      ),

                      ),


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