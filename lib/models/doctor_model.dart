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
  String description;

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
      required this.digitRate,
      required this.description

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
      digitRate: '5.0',
      description: "dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. "
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
      digitRate: '5.0',
      description: "dr. Chan is one of the best doctors in the Columbia Asia Hospital. She has saved more than 800 patients in the past 4 years. She has also received many awards from domestic and abroad as the best doctors. She is available on a private or schedule. "
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
      digitRate: '5.0',
      description: "dr. Mustakim is one of the best doctors in the Salemba Carolus Asia Hospital. He has saved more than 600 patients in the past 5 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. "
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
      digitRate: '5.0',
      description: "dr. Suprihatini is one of the best doctors in the Salemba Carolus Hospital. She has saved more than 600 patients in the past 6 years. She has also received many awards from domestic and abroad as the best doctors. She is available on a private or schedule. "
      )
    );


    return doctors;
  }


}