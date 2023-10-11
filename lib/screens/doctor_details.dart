import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetails extends StatelessWidget { //need to change parameters
  final String docImg;
  final String docName;
  final String specialization;
  final String hospital;
  final String description;
  final int exp;
  final int patients;
  final double rating;

  const DoctorDetails(
      {Key? key,
      required this.docImg,
      required this.docName,
      required this.specialization,
      required this.hospital,
      required this.description,
      required this.exp,
      required this.patients,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeaeaea), //0xffeaeaea
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(docImg)
              ),
              const Positioned(
                left: 10,
                top: 90,
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              const Positioned(
                right: 10,
                top: 90,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ), 
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                  child: Text(
                    docName, //CHANGE DIS
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        specialization, //REPLACE
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 15
                          ),
                        )
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                     Text(
                      hospital,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 15
                        )
                      )
                    )
                  ],
                ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 10, 40, 0),
                   child: Text(
                    description,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Color(0xffAAAAAA),
                        fontSize: 18,
                        height: 1.5,
                      )
                    ),
                  ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
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
                                  exp.toString(),
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
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      const VerticalDivider(
                        width: 20, 
                        thickness: 2,
                        color: Colors.black,
                      ),

                      Column(
                        children: [
                          Text(
                            "Patients",
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
                                  patients.toString(),
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff2B92E4),
                                    fontSize: 24
                                  ),
                                ),
                                Text(
                                  " ps",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xffAAAAAA),
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      const VerticalDivider(
                        width: 20, 
                        thickness: 2,
                        color: Colors.black,
                      ),

                      Column(
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
                                  rating.toString(),
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff2B92E4),
                                    fontSize: 24
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                    ],
                   ),
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
                          Image.asset('assets/icons/Icons-Comment.png',
                            )
                        ],
                      )
                    ],
                  )
              ], 
            )
          ),
        ],
      ),
    );
  }
}
