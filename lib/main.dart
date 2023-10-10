import 'package:find_your_doctor_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Find Your Doctor App',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );


}

}