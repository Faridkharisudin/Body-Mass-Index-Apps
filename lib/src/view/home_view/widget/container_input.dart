import 'package:faridkharisudin_tugas1_bmi/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerInput extends StatelessWidget {
  final String subText, unitSubText;
  final Color tColor;
  final TextEditingController? tController;
  ContainerInput(
      {Key? key,
      required this.subText,
      required this.unitSubText,
      required this.tColor,
      this.tController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 124,
            decoration: BoxDecoration(
              color: tColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                subText,
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  color: thisPrimaryBg,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 80, right: 180),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return '$subText tidak boleh kosong';
                }
                return null;
              },
              controller: tController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '0',
                isDense: true,
                contentPadding: EdgeInsets.all(8),
              ),
              style: GoogleFonts.poppins(
                fontSize: 65.0,
                fontWeight: FontWeight.w700,
                color: thisPrimaryBg,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 260),
            child: Text(
              unitSubText,
              style: GoogleFonts.poppins(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                color: thisPrimaryBg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
