// ignore: unused_import
import 'package:flutter/material.dart';

class DoctorModel{
  String imagePath;
  String name;
  String field;
  String hospital;
  String status;
  String exp;
  String patients;
  String digitRate;
  //add description

  DoctorModel
  (
    {
      required this.imagePath,
      required this.name,
      required this.field,
      required this.hospital,
      required this.status,
      required this.exp,
      required this.patients,
      required this.digitRate

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
      patients: '1221', 
      status: 'Open',
      exp: '3',
      digitRate: '5.0'
      )
    );

    doctors.add(
    DoctorModel
      (
      imagePath: 'assets/images/group23.png', 
      name: 'Shabil Chan', 
      field: 'Dental', 
      hospital: 'Columbia Asia Hospital', 
      patients: '964', 
      status: 'Open',
      exp: '4',
      digitRate: '5.0'
      )
    );

    doctors.add(
    DoctorModel
      (
      imagePath: 'assets/images/group24.png', 
      name: 'Mustakim', 
      field: 'Eye', 
      hospital: 'Salemba Carolus Hospital', 
      patients: '762', 
      status: 'Close',
      exp: '5',
      digitRate: '5.0'
      )
    );

    doctors.add(
    DoctorModel
      (
      imagePath: 'assets/images/group25.png', 
      name: 'Suprihatini', 
      field: 'Heart', 
      hospital: 'Salemba Carolus Hospital', 
      patients: '762', 
      status: 'Open',
      exp: '6',
      digitRate: '5.0'
      )
    );


    return doctors;
  }


}