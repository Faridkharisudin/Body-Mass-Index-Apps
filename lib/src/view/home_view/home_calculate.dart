import 'package:faridkharisudin_tugas1_bmi/src/constants/colors.dart';
import 'package:faridkharisudin_tugas1_bmi/src/constants/image_strings.dart';
import 'package:faridkharisudin_tugas1_bmi/src/constants/text_strings.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/home_view/widget/container_gender.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/home_view/widget/container_input.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/result_view/result.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/widget/widget_button_all.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class HomeCalculate extends StatefulWidget {
  const HomeCalculate({Key? key}) : super(key: key);

  @override
  State<HomeCalculate> createState() => _HomeCalculateState();
}

class _HomeCalculateState extends State<HomeCalculate> {
  final height = TextEditingController();
  final weight = TextEditingController();

  double thisWeight = 0, thisHeight = 0, resultData = 0;
  bool selectBtn = true;

  @override
  void dispose() {
    height.dispose();
    weight.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thisPrimaryBg,
      appBar: AppBar(
        backgroundColor: thisPrimaryBg,
        elevation: 0.0,
        title: Text(
          tNameApp,
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            color: thisWhite,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ContainerGender(
                      tIcon: Icons.male,
                      genders: "Male",
                      tColor:
                          selectBtn == true ? thisPrimaryPurple : thisPrimaryBg,
                      onpressed: () {
                        setState(() {
                          selectBtn = true;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ContainerGender(
                      tIcon: Icons.female,
                      genders: "Female",
                      tColor: selectBtn == false
                          ? thisPrimaryPurple
                          : thisPrimaryBg,
                      onpressed: () {
                        setState(() {
                          selectBtn = false;
                        });
                      },
                    ),
                  ],
                ),
                ContainerInput(
                  subText: "Height",
                  unitSubText: "cm",
                  tColor: thisBlue,
                  tController: height,
                ),
                ContainerInput(
                  subText: "Weight",
                  unitSubText: "kg",
                  tColor: thisYellow,
                  tController: weight,
                ),
                ContainerInput(
                  subText: "Age",
                  unitSubText: "y.old",
                  tColor: thisWhite,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: WidgetButtonAll(
                      nameButton: "Calculate!",
                      colorButton: thisPrimaryPurple,
                      onpressed: () {
                        Map<String, dynamic>? resultData =
                            ResultSet(weight, height);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Result(
                                  tColor: resultData?["color"],
                                  dataText: resultData?["textData"],
                                  dataTotal:
                                      "${resultData?['dataCalculation']}",
                                  dataNote: resultData?["dataNote"],
                                  iconIlustrasi: resultData?["icon"])),
                        );
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

Map<String, dynamic>? ResultSet(
    TextEditingController tWeight, TextEditingController tHeight) {
  double resultData1 =
      double.parse(tWeight.text) / pow((double.parse(tHeight.text) / 100), 2);
  double resultData = double.parse(resultData1.toStringAsFixed(2));
  if (resultData1 < 18.5) {
    Map<String, dynamic> resultLow = {
      "color": thisWhite,
      "textData": "Low:(",
      "dataCalculation": resultData,
      "dataNote": tNoteResultLow,
      "icon": tWarningHand
    };
    return resultLow;
  } else if (resultData1 >= 30.0) {
    Map<String, dynamic> resultHigh = {
      "color": thisYellow,
      "textData": "Obesity:(",
      "dataCalculation": resultData,
      "dataNote": tNoteResultOver,
      "icon": tWarningHand
    };
    return resultHigh;
  } else if (resultData1 >= 18.5 || resultData1 <= 29.9) {
    Map<String, dynamic> resultNormal = {
      "color": thisBlue,
      "textData": "Normal:)",
      "dataCalculation": resultData,
      "dataNote": tNoteResultNormal,
      "icon": tNormalHand
    };
    return resultNormal;
  }
}
