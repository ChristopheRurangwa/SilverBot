

import 'package:flutter/material.dart';
import 'package:silverbott/widgets/durations.dart';

import 'loginPage.dart';

class SignUp extends StatelessWidget {
  static const signup='/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Sign-Up"),),
      backgroundColor: Colors.black,
      body: Container(

        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage('lib/images/robot.png'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 41,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Silver ChatBot',
                        style: TextStyle(
                            color: Colors.tealAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 41),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [

                        SizedBox(width: 200,),
                        Durat().timeElapse('.', -309900, 39933366666666),
                      ],
                    ),
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),

                      child: TextField(

                        textAlign: TextAlign.center,
                        style: TextStyle(
                            backgroundColor: Colors.black54,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 33),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 0.8),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.cyanAccent,fontSize: 15)),

                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(

                        style: TextStyle(
                            backgroundColor: Colors.black54,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 33),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 0.8),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.cyanAccent,fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        SizedBox(
                          width: 23,
                        ),

                        SizedBox(
                          width: 19,
                        ),
                        Container(
                          width: 209,
                          child: ElevatedButton(


                            style: ButtonStyle(

                                overlayColor: MaterialStateProperty.all(Colors.cyanAccent),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14)
                                    )
                                )
                            ),
                            child: Text('Submit'),

                            onPressed: () {
                             // Navigator.pushNamed(context, );
                            },
                          ),


                        ),

                        Column(
                          children: [
                            SizedBox(height: 105,),
                            FloatingActionButton(
                              backgroundColor: Colors.cyan,
                                splashColor: Colors.red,
                                onPressed:(){
                                Navigator.pushNamed(context, LoginPage.backLogin);
                                },
                            child: Icon(Icons.arrow_back_ios),),
                          ],
                        )


                      ]),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
