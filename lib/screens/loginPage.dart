
import 'package:flutter/material.dart';
import 'package:silverbott/screens/signUp.dart';

import 'intro.dart';

class LoginPage extends StatelessWidget {
  static const backLogin='/backLogin';
  TextEditingController typedEmail=TextEditingController();
  TextEditingController typedPassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    /**
     * The login page has all buttons below in a row  and the textfield is column.
     */
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Container(

        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage('lib/images/image1.jpg'), fit: BoxFit.cover),
        ),
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
              SizedBox(
                height: 170,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: typedEmail,
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
                  controller: typedPassword,
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
                  ElevatedButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.brown),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)
                            )
                        )
                    ),
                    child: Text('Login'),

                    onPressed: () {
                      Navigator.pushNamed(context, Intro.intro_);

                    },

                  ),
                  SizedBox(
                    width: 39,
                  ),
                  ElevatedButton(

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
                    child: Text('Sign-Up'),

                    onPressed: () {
                      Navigator.pushNamed(context, SignUp.signup);
                    },
                  ),
                  SizedBox(
                    width: 42,
                  ),
                  ElevatedButton(
                    child: Text('Guest'),
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.brown),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)
                            )
                        )
                    ),
                    onPressed: () {

                      Navigator.pushNamed(context, Intro.intro_);

                    },
                  ),
                ]),
              ),
            ],
          ),)),
      ),
    );
  }
}
