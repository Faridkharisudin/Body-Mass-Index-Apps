import 'package:faridkharisudin_tugas1_bmi/src/constants/colors.dart';
import 'package:faridkharisudin_tugas1_bmi/src/constants/text_strings.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/widget/widget_button_all.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final Color tColor;
  final String dataText, dataTotal, dataNote, iconIlustrasi;

  const Result(
      {Key? key,
      required this.tColor,
      required this.dataText,
      required this.dataTotal,
      required this.dataNote,
      required this.iconIlustrasi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tColor,
      appBar: AppBar(
        backgroundColor: tColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          tNameApp,
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            color: thisPrimaryBg,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      margin: const EdgeInsets.only(left: 200),
                      child: Image.asset(
                        iconIlustrasi, // this parameter for mini ilustration in view result
                        width: 64.0,
                        height: 64.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 60),
                      child: Text(
                        "Your",
                        style: GoogleFonts.poppins(
                          fontSize: 85.0,
                          fontWeight: FontWeight.w700,
                          color: thisPrimaryBg,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 95),
                      child: Text(
                        "Result!",
                        style: GoogleFonts.poppins(
                          fontSize: 85.0,
                          fontWeight: FontWeight.w700,
                          color: thisPrimaryBg,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    border: Border.all(color: thisPrimaryBg),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text( // this widget for data normal, low, and high BMI data
                        dataText,
                        style: GoogleFonts.poppins(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w900,
                          color: thisPrimaryBg,
                        ),
                      ),
                      const Spacer(),
                      Text( // this widget for data total integer BMI data
                        dataTotal,
                        style: GoogleFonts.poppins(
                          fontSize: 65.0,
                          fontWeight: FontWeight.w900,
                          color: thisPrimaryBg,
                        ),
                      ),
                      const Spacer(),
                      Text( // this widget for description data after execute the view calculate
                        dataNote,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          color: thisPrimaryBg,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: WidgetButtonAll(
                      nameButton: "Back to Home!",
                      colorButton: thisPrimaryBg,
                      onpressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
