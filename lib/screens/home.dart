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
        margin: const EdgeInsets.fromLTRB(25, 10, 10, 10),
        child: Column(
          children: [
            topText(),

            
            // Other widgets in the Column
          ]
        )
      )
    );
  }

  RichText topText() //find your doctor text
  {
    return RichText(
            text: TextSpan(
              children: [
                
                TextSpan(
                  text: 'Find ',
                  style: TextStyle(
                    color: const Color(0xFF25282B), 
                    fontSize: 35,
                    fontFamily: GoogleFonts.lato().fontFamily,
                  )
                ),

                TextSpan(
                  text: 'your doctor',
                  style: TextStyle(
                    color: const Color(0xFFA0A4A8), 
                    fontSize: 35,
                    fontFamily: GoogleFonts.lato().fontFamily,
                  )
                )
              ]
            )
          );
  }

  AppBar topBarButtons() //top left menu and top right icon
  {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.only(left: 25),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 70, 
          height: 70, 
          child: Image.asset(
            'assets/icons/menu_icon.png',
            fit: BoxFit.cover,
          ),
        )
      ),
      actions: [
        GestureDetector(
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 25, 10),
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
