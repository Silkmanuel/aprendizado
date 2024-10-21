import 'package:app01/controller/inc_controller.dart';
import 'package:app01/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() { 
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          child: Homepage(),
          create: (_) => IncController(),
        ));
  }
}
