
import 'package:odii_translation_test/constant/colors.dart';
import 'package:odii_translation_test/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
///Decorator for my InputFields
InputDecoration getInputDecoration({
  @required String label,
  String hint,
  bool error,
  Widget suffixIcon,
  Widget prefixIcon,
  Color color,
  Color focusedColor,

}) {
  return InputDecoration(
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,
    labelText: label,
    hintText: hint,
    filled: true,
    fillColor: Colors.grey.withOpacity(.10),

    contentPadding: EdgeInsets.fromLTRB(25, 20, 25, 20),


    labelStyle: TextStyle(
      fontSize: 15.0,
      fontFamily: AppFonts.Poppins,
      color: error == true ? AppColors.textColor : color,
    ),
    hintStyle: TextStyle(
        fontSize: 15.0,
        color: error == true
            ? AppColors.badRedColor
            : (AppColors.textColor ?? AppColors.primaryColor2), fontFamily: AppFonts.Poppins),
    // border: InputBorder.none,

    border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: error == true
              ? AppColors.errorColor
              : (color ?? AppColors.whiteColor),
        )
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          color: error == true
              ? AppColors.errorColor
              : (focusedColor ?? AppColors.whiteColor),
        )),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: focusedColor ?? AppColors.whiteColor,
        width: 1.5,
      ),
    ),
  );
}

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    @required this.label,
    this.controller,
    FocusNode node,
    this.type,
    this.hint,
    this.color,
    this.focusedColor,
    this.maxLines,
    this.maxLength,
    this.obscureText,
    this.error,
    this.onChanged,
    this.validator,
    this.inputFormatter,
    this.textInputAction,
    this.hintColor,
    this.textColor,
    this.message,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled,
    this.initialValue,
    this.contentPadding

  })  : _node = node,
        super(key: key);

  final TextEditingController controller;
  final FocusNode _node;
  final TextInputType type;
  final List<TextInputFormatter> inputFormatter;
  final String initialValue;
  final String label;
  final String hint;
  final String message;
  final bool obscureText;
  final bool enabled;
  final bool error;
  final int maxLines;
  final int maxLength;


  /// The color of the border
  final Color color;

  /// The color of the border and label when the input is focused
  final Color focusedColor;

  /// The color of the hint text
  final Color hintColor;

  /// The color of the input value
  final Color textColor;

  /// Padding
  final  contentPadding;

  final TextInputAction textInputAction;
  final Function(String) onChanged;
  final Function(String) validator;

  final Widget prefixIcon;
  final Widget suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          enabled: enabled?? true,
          initialValue: initialValue,
          maxLines: maxLines ?? 1,
          controller: controller,
          focusNode: _node,
          textCapitalization: TextCapitalization.words,
          inputFormatters: inputFormatter,
          textInputAction: textInputAction ?? TextInputAction.next,
          autocorrect: false,
          keyboardType: type,
          obscureText: obscureText ?? false,
          onChanged: onChanged,
          validator: validator,


          style: TextStyle(
            fontSize: 15.0,

            color: textColor ?? AppColors.textColor,
          ),
          maxLength: maxLength,

          decoration: getInputDecoration(
              label: label,
              color: color,
              error: error,
              focusedColor: focusedColor,
              hint: hint,
              prefixIcon: prefixIcon,


              suffixIcon: suffixIcon),


        ),
        // Padding(
        //   padding: EdgeInsets.only(top: 5, bottom: 10, left: 2),
        //   child: Text(
        //     message ?? '',
        //     style: TextStyle(
        //       fontSize: 12.0,
        //       fontFamily: AppFonts.Poppins,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w500,
        //       color: error == true ? AppColors.badRedColor : AppColors.textColor,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}


//
InputDecoration getInputDecorationTwo({
  @required String label,
  String hint,
  bool error,
  Widget suffixIcon,
  Widget prefixIcon,
  Color color,
  Color focusedColor,

}) {
  return InputDecoration(
    suffixIcon: suffixIcon,
    prefixIcon: prefixIcon,
    labelText: label,
    hintText: hint,
    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.all(20.0),

    labelStyle: TextStyle(
      fontSize: 14.0,
      color: error == true ? AppColors.errorColor : color,
        fontFamily: AppFonts.Poppins,
    ),
    hintStyle: TextStyle(
        fontSize: 14.0,
        color: error == true
            ? AppColors.errorColor
            : (color ?? AppColors.primaryColor2), fontFamily: AppFonts.Poppins),
    border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(35.0),
        borderSide: BorderSide(
          width: 1.0,
          color: error == true
              ? AppColors.errorColor
              : (color ?? AppColors.inputColor),
        )),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(35.0),
        borderSide: BorderSide(
          width: 1.0,
          color: error == true
              ? AppColors.errorColor
              : (focusedColor ?? AppColors.primaryColor2),
        )),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(35.0),
      borderSide: BorderSide(
        color: focusedColor ?? AppColors.primaryColor2,
        width: 1.0,
      ),
    ),
  );
}


class InputFieldTwo extends StatelessWidget {
  const InputFieldTwo({
    Key key,
    @required this.label,
    this.controller,
    FocusNode node,
    this.type,
    this.hint,
    this.color,
    this.focusedColor,
    this.maxLines,
    this.maxLength,
    this.obscureText,
    this.error,
    this.onChanged,
    this.validator,
    this.textInputAction,
    this.hintColor,
    this.textColor,
    this.message,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled

  })  : _node = node,
        super(key: key);

  final TextEditingController controller;
  final FocusNode _node;
  final TextInputType type;

  final String label;
  final String hint;
  final String message;
  final bool obscureText;
  final bool enabled;
  final bool error;
  final int maxLines;
  final int maxLength;


  /// The color of the border
  final Color color;

  /// The color of the border and label when the input is focused
  final Color focusedColor;

  /// The color of the hint text
  final Color hintColor;

  /// The color of the input value
  final Color textColor;

  final TextInputAction textInputAction;
  final Function(String) onChanged;
  final Function(String) validator;

  final Widget prefixIcon;
  final Widget suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          enabled: enabled?? true,

          maxLines: maxLines ?? 1,
          controller: controller,
          focusNode: _node,
          textCapitalization: TextCapitalization.words,
          textInputAction: textInputAction ?? TextInputAction.next,
          autocorrect: false,
          keyboardType: type,
          obscureText: obscureText ?? false,
          onChanged: onChanged,
          validator: validator,

          style: TextStyle(
            fontSize: 14.0,

            color: textColor ?? AppColors.textColor,
          ),
          maxLength: maxLength,

          decoration: getInputDecorationTwo(
              label: label,
              color: color,
              error: error,
              focusedColor: focusedColor,
              hint: hint,
              prefixIcon: prefixIcon,


              suffixIcon: suffixIcon),


        ),
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 10),
          child: Text(
            message ?? '',
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: AppFonts.Poppins,
              color: error == true ? AppColors.badRedColor : AppColors.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
