import 'package:faridkharisudin_tugas1_bmi/src/view/authentication/opening_screen.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/home_view/home_calculate.dart';
import 'package:faridkharisudin_tugas1_bmi/src/view/result_view/result.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const OpeningScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeCalculate());
      // case '/result':
      //   return MaterialPageRoute(builder: (_) => const Result());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
