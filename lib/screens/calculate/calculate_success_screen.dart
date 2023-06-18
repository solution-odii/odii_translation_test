import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:odii_translation_test/constant/colors.dart';
import 'package:odii_translation_test/screens/dashboard/dashboard_screen.dart';

import '../../constant/fonts.dart';
import '../../widgets/button.dart';

class CalculateSuccessScreen extends StatefulWidget {
   CalculateSuccessScreen({Key key}) : super(key: key);

  static const routeName = '/calculateSuccess';

  @override
  State<CalculateSuccessScreen> createState() => _CalculateSuccessScreenState();
}

class _CalculateSuccessScreenState extends State<CalculateSuccessScreen> {
  bool showText = false;

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("assets/images/movematesuccess.png"),

            SizedBox(height: 10,),
            Text("Total Estimated Amount",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.primaryTextColor
              ),
            ),

            SizedBox(height: 10,),


          showText ?  Text('\$1460 USD', style:  TextStyle(
              fontFamily: AppFonts.Poppins,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              color: AppColors.goodGreen
          ),
          ):  SizedBox(
            height: 50,
            child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText(
                      '\$1450 USD',
                      textStyle:  TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.goodGreen),
                  duration: const Duration(milliseconds: 1000)

                  ),

                  ScaleAnimatedText(
                      '\$1451 USD',
                      textStyle:  TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.goodGreen
                  ),
                  duration: const Duration(milliseconds: 1000)
                  ),



                  ScaleAnimatedText(
                      '\$1452 USD',
                      textStyle:  TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.goodGreen
                  ),
                  duration: const Duration(milliseconds: 1000)
                  ),


                  ScaleAnimatedText(
                      '\$1455 USD',
                      textStyle:  TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.goodGreen
                  ),
                  duration: const Duration(milliseconds: 1000)
                  ),


                  ScaleAnimatedText(
                      '\$1458 USD',
                      textStyle:  TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.goodGreen
                  ),
                  duration: const Duration(milliseconds: 1000)
                  ),


                   ScaleAnimatedText(
                      '\$1459 USD',
                      textStyle:  TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.goodGreen
                  ),
                  duration: const Duration(milliseconds: 1000)
                  ),



                  ScaleAnimatedText('\$1460 USD', textStyle:  TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  color: AppColors.goodGreen
              ),
                  duration: const Duration(milliseconds: 1000)),

                ],

                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1),
                displayFullTextOnTap: false,

                stopPauseOnTap: false,

                onFinished: (){
                  setState(() {
                    showText = true;
                  });
                },


              ),
          ),




            SizedBox(height: 5,),
            Text("This amount is estimated this will vary \nif you changed your location or weight",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: AppColors.textColor
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: 380,
                child: Button(
                  text: 'Back to Home',
                  onPressed: () async{
                    FocusScope.of(context).unfocus();

                    Navigator.pushReplacementNamed(context, DashboardScreen.routeName);
                  },
                  loading: false,
                  loaderColor: Colors.white,
                  textColor: Colors.white,
                  color: Colors.orange,
                ),
              ),
            ),

          ],
        ),
    ),
      );
  }
}
