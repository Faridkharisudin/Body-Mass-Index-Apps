import 'package:faridkharisudin_tugas1_bmi/routes.dart';
import 'package:faridkharisudin_tugas1_bmi/src/constants/text_strings.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/authentication/opening_screen.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/home_view/home_calculate.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/result_view/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tNameApp,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
