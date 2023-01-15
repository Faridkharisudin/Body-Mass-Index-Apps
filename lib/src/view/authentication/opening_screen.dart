import 'package:faridkharisudin_tugas1_bmi/src/constants/colors.dart';
import 'package:faridkharisudin_tugas1_bmi/src/constants/image_strings.dart';
import 'package:faridkharisudin_tugas1_bmi/src/constants/text_strings.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/widget/widget_button_all.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thisPrimaryBg,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80.0),
              const Image(
                image: AssetImage(tSplashImage),
              ),
              const SizedBox(height: 80.0),
              Text(
                tSplassText,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  color: thisWhite,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 80.0),
              WidgetButtonAll(
                  nameButton: "Got It!",
                  colorButton: thisPrimaryPurple,
                  onpressed: () {
                    Navigator.pushNamed(context, '/home');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
