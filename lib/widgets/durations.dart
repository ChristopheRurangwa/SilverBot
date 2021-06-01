
import 'package:countup/countup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Durat {

  Widget timeElapse(String separ, double begin, double end) {
    return Row(
      children: [
        CircularProgressIndicator(
          backgroundColor: Colors.redAccent, strokeWidth: 1.6,),

        Container(

          child: Countup(
            begin: begin,
            style: GoogleFonts.cabin(fontSize: 9,color: Colors.white),
            end: end,
            prefix: ' p ',
            suffix: ' i ',
            duration: Duration(days: 5),
            separator: separ,
           textAlign: TextAlign.center,

          ),
        ),
      ],
    );
  }
}
/*
*
* name: silverbott
description: chat with a bot
*
* */