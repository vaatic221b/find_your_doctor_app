import 'package:flutter/material.dart';
import 'package:find_your_doctor_app/models/doctor_model.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetails extends StatefulWidget { 
  final int doctorIndex;


  const DoctorDetails(
      {Key? key,
        required this.doctorIndex,
      }
      ): super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  List<DoctorModel> doctors = [];

  void _getDoctors(){
    doctors = DoctorModel.getDoctors();
  }

  @override
  Widget build(BuildContext context) {
    _getDoctors();
    return Scaffold(
      backgroundColor: const Color(0xffeaeaea), 
      body: Column(
        children: [
          topIcons(), 
          docInfo(),
        ],
      ),
    );
  }

  Container docInfo() {
    return Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              docName(),
              Row(
                children: [
                  docMedicalField(),
                  const Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Icon(
                      Icons.circle,
                      size: 6,
                      color: Color(0xffAAAAAA),
                    ),
                  ),
                   docHospital()
                ],
              ),
               docDescription(),

               Padding(
                 padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    docExperience(),

                    const VerticalDivider(
                      width: 20, 
                      thickness: 2,
                      color: Colors.black,
                    ),

                    docPatients(),

                    const VerticalDivider(
                      width: 20, 
                      thickness: 2,
                      color: Colors.black,
                    ),

                    docRating(),

                  ]
                 )
               ),

                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xff4485FD),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset(
                          'assets/icons/comment_icon.png',
                          )
                      ]
                    )
                  ]
                )
            ] 
          )
        );
  }

  //METHODS

  Column docRating() {
    return Column(
                    children: [
                      Text(
                        "Rating",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          children: [
                            Text(
                              doctors[widget.doctorIndex].digitRate,
                              style: GoogleFonts.lato(
                                color: const Color(0xff2B92E4),
                                fontSize: 24
                              )
                            )
                          ]
                        )
                      )
                    ]
                  );
  }

  Column docPatients() {
    return Column(
                    children: [
                      Text(
                        "Patients",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          children: [
                            Text(
                             doctors[widget.doctorIndex].patients,
                              style: GoogleFonts.lato(
                                color: const Color(0xff2B92E4),
                                fontSize: 24
                              )
                            ),
                            Text(
                              " ps",
                              style: GoogleFonts.lato(
                                color: const Color(0xffAAAAAA),
                                fontSize: 18,
                              )
                            )
                          ]
                        )
                      )
                    ]
                  );
  }

  Column docExperience() {
    return Column(
                    children: [
                      Text(
                        "Experience",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          children: [
                            Text(
                              doctors[widget.doctorIndex].exp,
                              style: GoogleFonts.lato(
                                color: const Color(0xff2B92E4),
                                fontSize: 24
                              ),
                            ),
                            Text(
                              " yr",
                              style: GoogleFonts.lato(
                                color: const Color(0xffAAAAAA),
                                fontSize: 18,
                              )
                            )
                          ]
                        )
                      )
                    ]
                  );
  }

  Padding docDescription() {
    return Padding(
               padding: const EdgeInsets.fromLTRB(20, 10, 40, 0),
               child: Text(
                'Sample text neyenyeney', //please add description in doctor_model.dart so that igo nlng doctors[widget.doctorIndex].desc ang ibutang diri nga line
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: Color(0xffAAAAAA),
                    fontSize: 18,
                    height: 1.5,
                  )
                )
              )
             );
  }

  Text docHospital() {
    return Text(
                  doctors[widget.doctorIndex].hospital,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Color(0xffAAAAAA),
                      fontSize: 15
                    )
                  )
                );
  }

  Padding docMedicalField() {
    return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    doctors[widget.doctorIndex].field, 
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                      color: Color(0xffAAAAAA),
                      fontSize: 15
                      )
                    )
                  )
                );
  }

  Padding docName() {
    return Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text(
                'dr. ${doctors[widget.doctorIndex].name}', 
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
                )
              )
            );
  }

  Stack topIcons() {
    return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(doctors[widget.doctorIndex].imagePath) 
            ),
            const Positioned(
              left: 10,
              top: 90,
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 40,
              )
            ),
            const Positioned(
              right: 10,
              top: 90,
              child: Icon(
                Icons.bookmark,
                color: Colors.black,
                size: 30,
              )
            )
          ]
        );
  }
}
