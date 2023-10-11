import 'package:flutter/material.dart';

class DoctorModel{
  String imagePath;
  String name;
  String field;
  String hospital;
  String rating;
  String status;


  DoctorModel
  (
    {
      required this.imagePath,
      required this.name,
      required this.field,
      required this.hospital,
      required this.rating,
      required this.status
    }
  );

  static List<DoctorModel> getDoctors()
  {
    List<DoctorModel> doctors = [];

    doctors.add(
    DoctorModel
      (
      imagePath: 'assets/images/group22.png', 
      name: 'Gilang Segara Bening', 
      field: 'Heart', 
      hospital: 'Persahabatan Hospital', 
      rating: '1221', 
      status: 'Open'
      )
    );

    doctors.add(
    DoctorModel
      (
      imagePath: 'assets/images/group23.png', 
      name: 'Shabil Chan', 
      field: 'Dental', 
      hospital: 'Columbia Asia Hospital', 
      rating: '964', 
      status: 'Open'
      )
    );

    doctors.add(
    DoctorModel
      (
      imagePath: 'assets/images/group24.png', 
      name: 'Mustakim', 
      field: 'Eye', 
      hospital: 'Salemba Carolus Hospital', 
      rating: '762', 
      status: 'Close'
      )
    );

    doctors.add(
    DoctorModel
      (
      imagePath: 'assets/images/group25.png', 
      name: 'Suprihatini', 
      field: 'Heart', 
      hospital: 'Salemba Carolus Hospital', 
      rating: '762', 
      status: 'Open'
      )
    );


    return doctors;
  }


}