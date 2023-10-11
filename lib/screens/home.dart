import 'package:find_your_doctor_app/models/doctor_model.dart';
import 'package:find_your_doctor_app/screens/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DoctorModel> doctors = [];

  void _getDoctors(){
    doctors = DoctorModel.getDoctors();
  }


  @override
  Widget build(BuildContext context) {
    _getDoctors();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topBarButtons(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(25, 3, 25, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topText(),
              const SizedBox(height: 30),
              searchBar(),
              const SizedBox(height: 25),
              medFields(),  //not done 
              const SizedBox(height: 30),
              bottomText(), 
              const SizedBox(height: 25),
              findDoctor(), //not done
      
            ]
          )
        ),
      )
    );
  }


// METHODS 

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

  TextField searchBar() //search bar
  {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF6F6F6),
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        hintText: 'Search doctor, medicines, etc',
        hintStyle: TextStyle(
          fontFamily: GoogleFonts.lato().fontFamily,
          color: const Color(0xFFCACCCF),
          fontSize: 13
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0), 
          child: Image.asset('assets/icons/search_icon.png'),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        )
      )
    );
  }

  Container medFields() //row medical fields
  {
    return Container(
      height: 195,
      color: Colors.lime
    );
  }

  Row bottomText() { //top doctors and view all
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Expanded(
          child: Text(
            'Top Doctors',
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'View all',
            style: GoogleFonts.lato(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF4485FD),
            ),
          ),
        ),
      ],
    );
  }

  Container findDoctor() //list of doctors
  {
    return Container(
      height: 240,
      color: Colors.white,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: doctors.length,
        itemBuilder: (context, index)
        {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoctorDetails(doctorIndex: index); 
                  },
                ),
              );
            },
            child: Container(
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  doctorPicture(index),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 232,
                    child: Column(              
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),                
                        doctorName(index),                 
                        const SizedBox(height: 6),            
                        doctorInfo(index),              
                        const SizedBox(height: 15),              
                        doctorRating(index)
                      ],
                    ),
                  ),
                ]
                ),
            ),
          );
        }
        ),
    );
  }

  Container doctorPicture(int index) {
    return Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12), 
                  child: Image.asset(
                    doctors[index].imagePath,
                    fit: BoxFit.cover, 
                  ),
                ),
              );
  }

  Text doctorName(int index) {
    return Text(
                      'dr. ${doctors[index].name}',
                      style: GoogleFonts.lato(
                        color: const Color(0xFF404345),
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                        ),
                      );                     
  }

  Text doctorInfo(int index) {
    return Text(
                      '${doctors[index].field}    \u2022    ${doctors[index].hospital}',
                      style: GoogleFonts.lato(
                        color: const Color(0xFFAAAAAA),
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                    );
  }

  Row doctorRating(int index) {
    return Row(
                      children: [
                        ...List<Widget>.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 17
                          );
                        }),
              
                        Text(
                          '  (${doctors[index].patients})',
                          style: GoogleFonts.lato(
                            color: const Color(0xFFC4C4C4),
                            fontSize: 12,    
                            ),
                          ),
                        
                        const Spacer(),
                        doctorStatus(index)

                      ],
                    );
  }

  Container doctorStatus(int index) {
    return Container(
                          width: 55,
                          height: 25,
                          decoration: BoxDecoration(
                            color: doctors[index].status == 'Open' ? const Color(0xFFCCF5E1) : const Color(0xFFF7E4D9),
                            borderRadius: BorderRadius.circular(3)
                          ),
                          child: Center(
                            child: Text(
                              doctors[index].status,
                              style: TextStyle(
                                color: doctors[index].status == 'Open' ? const Color(0xFF00CC6A) : const Color(0xFFCC4900),
                                fontSize: 13
                              ),
                            ),
                          ),
                        );
  }
}
