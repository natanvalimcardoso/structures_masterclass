import 'package:flutter/material.dart';
import 'package:flutter_pastas_masterclass/src/json_placeholder/screens/home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}
