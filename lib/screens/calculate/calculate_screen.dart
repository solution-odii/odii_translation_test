import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odii_translation_test/constant/image_assets.dart';
import 'package:odii_translation_test/screens/calculate/calculate_success_screen.dart';
import 'package:odii_translation_test/widgets/input_field.dart';

import '../../constant/colors.dart';
import '../../constant/fonts.dart';
import '../../widgets/button.dart';
import '../../widgets/line_track.dart';
import '../dashboard/dashboard_screen.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({Key key}) : super(key: key);
  static const routeName = '/calculate';
  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {

  bool checkedValue1 = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;
  bool checkedValue4 = false;
  bool checkedValue5 = false;
  bool checkedValue6 = false;
  bool checkedValue7 = false;
  bool checkedValue8 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, DashboardScreen.routeName);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 0),
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20,),
          ),
        ),

        title: const Text('Calculate',   style: TextStyle(

            fontFamily: AppFonts.Poppins,
            fontWeight: FontWeight.w500,
            fontSize: 15,
            fontStyle: FontStyle.normal,
            color: Colors.white
        ),),

      ),
      body:    ListView(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(18.0, 8, 0, 8),
              child: Text("Destination",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: AppFonts.Poppins,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    color: Colors.black
                ),
              ),
            ),




          ],),

          Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(27),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white38.withOpacity(0.25),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],

              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),

                    Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 0,18,10),
                  child: InputField(
                        // controller: oldPinController,
                        type: TextInputType.text,
                        hint: 'Sender location',

                        onChanged: (v) {
                          // store.oldPin = v;
                        } ,
                        // message: store.error.oldPin,
                        // error: store.error.oldPin != null,
                        color: AppColors.textColor,
                        hintColor: AppColors.textColor,
                        textColor: AppColors.textColor,
                        focusedColor: AppColors.whiteColor,
                    prefixIcon: Container(
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.archive_outlined, color: Colors.grey,),
                            SizedBox(width: 5,),
                            lineTrack(Color(0xFF99A6A8)),

                          ],
                        ),
                      ),
                    ),
                      ),
                ),
                    Padding(padding: const EdgeInsets.fromLTRB(18.0, 0,18,10),
                  child: InputField(
                        // controller: oldPinController,
                        type: TextInputType.text,
                        hint: 'Receiver location',

                        onChanged: (v) {
                          // store.oldPin = v;
                        } ,
                        // message: store.error.oldPin,
                        // error: store.error.oldPin != null,
                        color: AppColors.textColor,
                        hintColor: AppColors.textColor,
                        textColor: AppColors.textColor,
                        focusedColor: AppColors.whiteColor,
                    prefixIcon: Container(
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.archive_outlined, color: Colors.grey,),
                            SizedBox(width: 5,),
                            lineTrack(Color(0xFF99A6A8)),

                          ],
                        ),
                      ),
                    ),
                      ),
                ),
                    Padding(padding: const EdgeInsets.fromLTRB(18.0, 0,18,10),
                  child: InputField(
                        // controller: oldPinController,
                        type: TextInputType.text,
                        hint: 'Approx Weight',

                        onChanged: (v) {
                          // store.oldPin = v;
                        } ,
                        // message: store.error.oldPin,
                        // error: store.error.oldPin != null,
                        color: AppColors.textColor,
                        hintColor: AppColors.textColor,
                        textColor: AppColors.textColor,
                        focusedColor: AppColors.whiteColor,
                    prefixIcon: Container(
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.line_weight, color: Colors.grey,),
                            SizedBox(width: 5,),
                            lineTrack(Color(0xFF99A6A8)),

                          ],
                        ),
                      ),
                    ),
                      ),
                ),

                    SizedBox(height: 10,),



                  ],
                ),
              )

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 18.0, top: 0, bottom: 5),
                child: Text("Packaging",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: AppFonts.Poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black
                  ),
                ),
              ),




            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Padding(
                padding: EdgeInsets.only(left:18.0),
                child: Text("What are you sending?",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: AppFonts.Poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      color: AppColors.textColor
                  ),
                ),
              ),






            ],),

          Padding(
            padding:  EdgeInsets.fromLTRB(18.0, 18,18,0),
            child: InputFieldTwo(
              // controller: oldPinController,
              type: TextInputType.text,
              hint: 'Box',

              onChanged: (v) {
                // store.oldPin = v;
              } ,
              // message: store.error.oldPin,
              // error: store.error.oldPin != null,
              color: Colors.black,
              hintColor: Colors.black,
              textColor:Colors.black,
              focusedColor: AppColors.whiteColor,
              prefixIcon: Container(
                width: 60,
                child: Padding(
                  padding:  EdgeInsets.only(left: 18.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(assetDeliveryTruckImage, color: Colors.grey, height: 20, width: 20,),
                      SizedBox(width: 5,),
                      lineTrack(Color(0xFF99A6A8)),

                    ],
                  ),
                ),
              ),
              suffixIcon: Icon(Icons.arrow_drop_down_sharp, color: Colors.grey,),
            ),
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 18.0, top: 0, bottom: 5),
                child: Text("Categories",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: AppFonts.Poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black
                  ),
                ),
              ),




            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Padding(
                padding: EdgeInsets.only(left:18.0),
                child: Text("What are you sending?",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: AppFonts.Poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      color: AppColors.textColor
                  ),
                ),
              ),






            ],),



          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 10,
              runSpacing: 10,
              children: [
                InkWell(
                  onTap:(){
                    setState(() {

                      checkedValue3 = !checkedValue3;
                      checkedValue1 = false;
                      checkedValue2 = false;
                      checkedValue4 = false;
                      checkedValue5 = false;
                      checkedValue6 = false;
                      checkedValue7 = false;
                      checkedValue8 = false;
                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: checkedValue3 ? AppColors.cardColor2 : Colors.transparent,
                      border: Border.all(color: AppColors.cardColor2 )
                    ),
                    child: Text(
                      "Documents",
                      style: TextStyle(
                        color: checkedValue3 ? AppColors.whiteColor : AppColors.lightTextColor,
                        fontWeight: checkedValue3 ? FontWeight.w700 : FontWeight.w500,
                        fontFamily: AppFonts.Poppins,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    width: 120,
                  ),
                ),

                InkWell(
                  onTap:(){
                    setState(() {
                      checkedValue4 = !checkedValue4;
                      checkedValue1 = false;
                      checkedValue2 = false;
                      checkedValue3 = false;
                      checkedValue5 = false;
                      checkedValue6 = false;
                      checkedValue7 = false;
                      checkedValue8 = false;
                    });


                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: checkedValue4 ? AppColors.cardColor2 : Colors.transparent,
                        border: Border.all(color: AppColors.cardColor2 )
                    ),
                    child: Text(
                      "Glass",
                      style: TextStyle(
                        color: checkedValue4 ? AppColors.whiteColor : AppColors.lightTextColor,
                        fontWeight: checkedValue4 ? FontWeight.w700 : FontWeight.w500,
                        fontFamily: AppFonts.Poppins,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    width: 80,
                  ),
                ),

                InkWell(
                  onTap:(){
                    setState(() {
                      checkedValue5 = !checkedValue5;
                      checkedValue1 = false;
                      checkedValue2 = false;
                      checkedValue3 = false;
                      checkedValue4 = false;
                      checkedValue6 = false;
                      checkedValue7 = false;
                      checkedValue8 = false;
                    });


                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: checkedValue5 ? AppColors.cardColor2 : Colors.transparent,
                        border: Border.all(color: AppColors.cardColor2 )
                    ),
                    child: Text(
                      "Liquid",
                      style: TextStyle(
                        color: checkedValue5 ? AppColors.whiteColor : AppColors.lightTextColor,
                        fontWeight: checkedValue5 ? FontWeight.w700 : FontWeight.w500,
                        fontFamily: AppFonts.Poppins,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    width: 90,
                  ),
                ),

                InkWell(
                  onTap:(){
                    setState(() {
                      checkedValue6 = !checkedValue6;
                      checkedValue1 = false;
                      checkedValue2 = false;
                      checkedValue3 = false;
                      checkedValue4 = false;
                      checkedValue5 = false;
                      checkedValue7 = false;
                      checkedValue8 = false;
                    });


                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: checkedValue6 ? AppColors.cardColor2 : Colors.transparent,
                        border: Border.all(color: AppColors.cardColor2 )
                    ),
                    child: Text(
                      "Food",
                      style: TextStyle(
                        color: checkedValue6 ? AppColors.whiteColor : AppColors.lightTextColor,
                        fontWeight: checkedValue6 ? FontWeight.w700 : FontWeight.w500,
                        fontFamily: AppFonts.Poppins,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    width: 80,
                  ),
                ),

                InkWell(
                  onTap:(){
                    setState(() {
                      checkedValue7 = !checkedValue7;
                      checkedValue1 = false;
                      checkedValue2 = false;
                      checkedValue3 = false;
                      checkedValue4 = false;
                      checkedValue5 = false;
                      checkedValue6 = false;
                      checkedValue8 = false;
                    });


                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: checkedValue7 ? AppColors.cardColor2 : Colors.transparent,
                        border: Border.all(color: AppColors.cardColor2 )
                    ),
                    child: Text(
                      "Electronic",
                      style: TextStyle(
                        color: checkedValue7 ? AppColors.whiteColor : AppColors.lightTextColor,
                        fontWeight: checkedValue7 ? FontWeight.w700 : FontWeight.w500,
                        fontFamily: AppFonts.Poppins,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    width: 120,
                  ),
                ),


                InkWell(
                  onTap:(){
                    setState(() {
                      checkedValue8 = !checkedValue8;
                      checkedValue1 = false;
                      checkedValue2 = false;
                      checkedValue3 = false;
                      checkedValue4 = false;
                      checkedValue5 = false;
                      checkedValue6 = false;
                      checkedValue7 = false;
                    });


                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: checkedValue8 ? AppColors.cardColor2 : Colors.transparent,
                        border: Border.all(color: AppColors.cardColor2 )
                    ),
                    child: Text(
                      "Product",
                      style: TextStyle(
                        color: checkedValue8 ? AppColors.whiteColor : AppColors.lightTextColor,
                        fontWeight: checkedValue8 ? FontWeight.w700 : FontWeight.w500,
                        fontFamily: AppFonts.Poppins,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    width: 100,
                  ),
                ),

              ],
            ),
          ),



          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 160,
              child: Button(
                text: 'Calculate',
                onPressed: () async{
                  FocusScope.of(context).unfocus();

                  Navigator.pushNamed(context, CalculateSuccessScreen.routeName);
                },
                loading: false,
                loaderColor: Colors.white,
                textColor: Colors.white,
                color: Colors.orange,
              ),
            ),
          ),
        ],),
    );
  }


}
