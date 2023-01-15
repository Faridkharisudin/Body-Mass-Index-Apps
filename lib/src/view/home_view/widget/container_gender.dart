import 'package:faridkharisudin_tugas1_bmi/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerGender extends StatelessWidget {
  final IconData tIcon;
  final String genders;
  final VoidCallback onpressed;
  final Color tColor;
  ContainerGender({Key? key, required this.tIcon, required this.genders, required this.onpressed, required this.tColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: tColor,
          elevation: 2,
          minimumSize: const Size(119, 120),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Icon(
              tIcon,
              color: thisWhite,
              size: 32.0,
            ),
            Text(
              genders,
              style: GoogleFonts.poppins(
                color: thisWhite,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
