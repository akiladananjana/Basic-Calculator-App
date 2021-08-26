import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgmt/providers/DataStore.dart';

import 'screens/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataStore>(
      create: (context) => DataStore(),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFF22252D)),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
