
import 'package:odii_translation_test/constant/colors.dart';
import 'package:odii_translation_test/constant/fonts.dart';
import 'package:flutter/material.dart';

class Decorators{

  static InputDecoration dropDownDecorator(String label){
    return  InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.borderColor)),
      filled: true,
      fillColor: Colors.transparent,
      labelText: label,
      labelStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.Poppins,
        color:  AppColors.textColor,
        // fontWeight: FontWeight.w500,
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.borderColor)
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.borderColor)
      ),
    );
  }

 }