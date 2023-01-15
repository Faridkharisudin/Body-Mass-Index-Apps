import 'package:faridkharisudin_tugas1_bmi/src/constants/colors.dart';
import 'package:faridkharisudin_tugas1_bmi/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetButtonAll extends StatelessWidget {
  final String nameButton;
  final Color colorButton;
  final VoidCallback onpressed;

  WidgetButtonAll(
      {Key? key,
      required this.nameButton,
      required this.colorButton,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorButton,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            nameButton,
            style: GoogleFonts.poppins(
                fontSize: 18.0, fontWeight: FontWeight.w700, color: thisWhite),
          ),
        ),
      ),
    );
  }
}
