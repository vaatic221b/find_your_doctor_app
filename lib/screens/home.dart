import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topBarButtons(),
      body: Container(
        margin: EdgeInsets.fromLTRB(25, 10, 10, 10),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Find ',
                    style: TextStyle(
                      color: Color(0xFF25282B), // Color for "Find"
                      fontSize: 35,
                      fontFamily: GoogleFonts.lato().fontFamily,
                    ),
                  ),
                  TextSpan(
                    text: 'your doctor',
                    style: TextStyle(
                      color: Color(0xFFA0A4A8), // Color for "your doctor"
                      fontSize: 35,
                      fontFamily: GoogleFonts.lato().fontFamily,
                    ),
                  ),
                ],
              ),
            ),

            
            // Other widgets in the Column
          ]
        )
      )
    );
  }

  AppBar topBarButtons() {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.fromLTRB(25, 10, 10, 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Image.asset(
            'assets/icons/menu_icon.png',
            height: 60,
            width: 60,
          )
        )
      ),
      actions: [
        GestureDetector(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 25, 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Image.asset(
            'assets/icons/top_icon.png',
            height: 35,
            width: 35,
          ),
        )
        )
      ]
    );
  }
}
