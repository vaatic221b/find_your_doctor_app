// ignore: unused_import
import 'package:flutter/material.dart';

class FieldsModel{
  String name;
  String iconPath;
  Color boxColor;

  FieldsModel
  (
    {
      required this.name,
      required this.iconPath,
      required this.boxColor
    }
  );

  static List<FieldsModel> getMedicalFields()
  {
    List<FieldsModel> medicalFields = [];

    medicalFields.add(
    FieldsModel
      (
      name: 'Consultation',
      iconPath: 'assets/icons/stethoscope.png',  
      boxColor: const Color(0xFF4485FD) 
      )
    );

    medicalFields.add(
    FieldsModel
      (
      name: 'Dental',
      iconPath: 'assets/icons/tooth.png',  
      boxColor: const Color(0xFFA584FF)
      )
    );

    medicalFields.add(
    FieldsModel
      (
      name: 'Heart',
      iconPath: 'assets/icons/heart.png',  
      boxColor: const Color(0xFFFF7854)
      )
    );

    medicalFields.add(
    FieldsModel
      (
      name: 'Hospitals',
      iconPath: 'assets/icons/hospital.png',  
      boxColor: const Color(0xFFFEA725)
      )
    );

    medicalFields.add(
    FieldsModel
      (
      name: 'Medicines',
      iconPath: 'assets/icons/medicine.png',  
      boxColor: const Color(0xFF00CC6A)
      )
    );

    medicalFields.add(
    FieldsModel
      (
      name: 'Physician',
      iconPath: 'assets/icons/care.png',  
      boxColor: const Color(0xFF00C9E4)
      )
    );

    medicalFields.add(
    FieldsModel
      (
      name: 'Skin',
      iconPath: 'assets/icons/bandage.png',  
      boxColor: const Color(0xFFFD44B3)
      )
    );

    medicalFields.add(
    FieldsModel
      (
      name: 'Surgeon',
      iconPath: 'assets/icons/syringe.png',  
      boxColor: const Color(0xFFFD4444)
      )
    );

    return medicalFields;
  }


}