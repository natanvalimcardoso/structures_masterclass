import 'package:flutter/material.dart';

import 'src/json_placeholder/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
=======
    return  MaterialApp(
      home: HomePage(),//erro
>>>>>>> be7a5556d0d63dd5a84a501dbe69f295a6e097e2
    );
  }
}

