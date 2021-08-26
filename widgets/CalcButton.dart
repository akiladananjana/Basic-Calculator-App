import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgmt/providers/DataStore.dart';
//import 'package:google_fonts/google_fonts.dart';

class CalButton extends StatelessWidget {
  String buttonText;
  Color buttonColor;

  CalButton(this.buttonText, this.buttonColor);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //elevation: 4,
        color: Color(0XFF22252D),
        child: SizedBox(
          height: 75,
          width: 75,
          child: FlatButton(
            onPressed: () {
              Provider.of<DataStore>(context, listen: false)
                  .displayInput(buttonText);
            },
            child: FittedBox(
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 30, color: buttonColor),
              ),
            ),
          ),
        ));
  }
}
