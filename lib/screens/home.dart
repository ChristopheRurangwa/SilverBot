

import 'package:flutter/material.dart';
import 'package:silverbott/models/info.dart';
import 'package:silverbott/widgets/durations.dart';

class Home extends StatefulWidget {
  static const hom = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textTypd=TextEditingController();

  final List<String> ka = [
    'j',
    'k',
    'kkk',
    'cdkk',
    'tell',
    'kdjkkkfk',
    'j',
    'k',
    'kkk',
    'cdkk',
    'tell',
    'kdjkkkfk',
    'j',
    'k',
    'kkk',
    'cdkk',
    'tell',
    'kdjkkkfk'
  ];

  @override
  Widget build(BuildContext context) {

    final passedNamd = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      //   shadowColor: Colors.white,
      //   elevation: 66,
      //   title: Text(
      //     'Identified ${InfoDeta(passedNamd).typedName()}',
      //     style: TextStyle(color: Colors.black26),
      //   ),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('lib/images/con.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            //ALL CONVERSATION ARE HERE.
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 7.090000,
                        ),
                        Container(
                          // BOT Replies

                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.cyanAccent),
                          ),
                          height: 450,
                          width: 330,
                          child: ListView.builder(
                            itemCount: ka.length,
                            itemBuilder: (context, i) {
                              return Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Container(
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.all(0.7),
                                      child: Text(
                                        'data ${ka[i]}',
                                        style:
                                            TextStyle(color: Colors.cyanAccent),
                                      ),
                                    )),
                                  ),
                                  SizedBox(height: 20,),
                                  LinearProgressIndicator(
                                    backgroundColor: Colors.cyanAccent,
                                    minHeight: 0.7,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black87),

                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    // human replies
                                    child: Text(
                                      'jdkjfkdjfk',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                children: [
                  LinearProgressIndicator(// the middle linear progressor between text area and message board.
                    backgroundColor: Colors.redAccent,
                    minHeight: 0.9,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),

                  ),
                  Column(
                    children: [// the middle wheels
                      SizedBox(height: 2,),
                      Container(

                        child: Row(
                          children: [
                            SizedBox(width: 1,),
                            Durat().timeElapse(',', -7799779, 999999999999999),
                            Durat().timeElapse(',', -7799779, 999999999999999),
                            //Durat().timeElapse(',', -7799779, 999999999999999),


                          ],
                        ),
                      ),

                    ],
                  ),
                  LinearProgressIndicator(// the middle linear progressor between text area and message board.
                    backgroundColor: Colors.redAccent,
                    minHeight: 0.9,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),

                  ),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(// User inputs here
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 220,
                          width: 285,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.cyanAccent),
                              color: Colors.black54),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextFormField(
                                controller: textTypd,

                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                                autocorrect: true,
                                maxLines: 1000,
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Questions?'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 72,
                            ),
                            FloatingActionButton(
                              elevation: 33,
                              onPressed: () {
                              //  ka.add(InfoDeta("","").docu(textTypd.toString()));
                           //   ka.add(InfoDeta("","").docu(textTypd);
                              },
                              child: Text('send'),
                              splashColor: Colors.cyanAccent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
