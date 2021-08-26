import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgmt/providers/DataStore.dart';
import 'package:state_mgmt/widgets/CalcButton.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  Provider.of<DataStore>(context, listen: true).oldNumber,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                FittedBox(
                  child: Text(
                    Provider.of<DataStore>(context).result.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0xFF292D36),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalButton("AC", Color(0XFF26D3B5)),
                    CalButton("M+", Color(0XFF26D3B5)),
                    CalButton("M-", Color(0XFF26D3B5)),
                    CalButton("/", Color(0XFFF16868)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalButton("7", Colors.white),
                    CalButton("8", Colors.white),
                    CalButton("9", Colors.white),
                    CalButton("*", Color(0XFFF16868)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalButton("4", Colors.white),
                    CalButton("5", Colors.white),
                    CalButton("6", Colors.white),
                    CalButton("-", Color(0XFFF16868)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalButton("1", Colors.white),
                    CalButton("2", Colors.white),
                    CalButton("3", Colors.white),
                    CalButton("+", Color(0XFFF16868)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalButton("00", Colors.white),
                    CalButton("0", Colors.white),
                    CalButton(".", Colors.white),
                    CalButton("=", Color(0XFFF16868)),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
