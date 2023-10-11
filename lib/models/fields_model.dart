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
      iconPath: 'assets/icons/stethoscope_icon.png',  
      boxColor: Colors.white 
      )
    );

    return medicalFields;
  }


}