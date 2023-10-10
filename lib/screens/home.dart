import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Image.asset(
              'assets/icons/menu_icon.png',
              height: 20,
              width: 20,
            ),
          ),
        ),
        actions: [
          GestureDetector(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Image.asset(
              'assets/icons/top_icon.png',
              height: 25,
              width: 25,
            ),
          ),
        ),
          ],
      )
    );
  }
}
