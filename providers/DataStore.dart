import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class DataStore extends ChangeNotifier {
  String oldNumber = "";
  double result = 0;

  void displayInput(String data) {
    if (data == "=") {
      ContextModel cm = ContextModel();
      Parser p = Parser();
      Expression exp = p.parse(oldNumber);
      result = exp.evaluate(EvaluationType.REAL, cm);
      notifyListeners();
      print(result);
    } else if (data != "AC") {
      oldNumber += data;
      notifyListeners();
    } else {
      oldNumber = "";
      result = 0.0;
      notifyListeners();
    }
  }
}
