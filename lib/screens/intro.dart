import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:silverbott/models/info.dart';
import 'package:silverbott/widgets/durations.dart';

import 'home.dart';

class Intro extends StatelessWidget {
  static const intro_ = '/intro';
  final nameController = TextEditingController();
  var names='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('lib/images/man.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(// makes the column scroll up
          child: Column(
            children: [
              SizedBox(
                height: 23,
              ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 52,
                        width: 130,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: 'Your name',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          controller: nameController,
                          onChanged: (nam) {
                            InfoDeta(nam,"").typedName();
                           names= InfoDeta(nam,"").typedName();

                          },
                        )),
                  ),
                  SizedBox(width: 38,),
                  Column(
                    children: [
                      SizedBox(height: 89,),
                      Durat().timeElapse(',', -2218812223, 999999999999999),// head metrics
                    ],
                  ),
                ],

              ),
              SizedBox(
                height: Platform.isIOS ? 170 : 111,
              ),
              FlatButton(
                child: Row(
                  children: [
                    SizedBox(
                      width: Platform.isIOS ? 90 : 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        height: 52,
                        width: Platform.isIOS ? 170 : 140,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            'Continue',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Home.hom,arguments:names );


                },
              ),
              Column(

                children: [
                  SizedBox(height: 7.208,),
                  Row(
                    children: [
                      SizedBox(width: 220,),
                      Durat().timeElapse(',', -13622, 2999933333),//abdomen metrics
                    ],
                  ),
                ],
              ),

            SizedBox(height: 0.0008,),
            Column(

              children: [
                SizedBox(height: 0.0002,),
                Row(
                  children: [
                    SizedBox(width: 173,),
                    Durat().timeElapse(',', -87880, 999993333),// hip metrics
                  ],
                ),
              ],
            ),
              SizedBox(height: 0.0008,),
              Column(

                children: [
                  SizedBox(height: 114.0002,),
                  Row(
                    children: [

                      SizedBox(width: 188,),
                      Durat().timeElapse(',', -554436, 233333322222),//Hill metrics

                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
