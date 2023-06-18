import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odii_translation_test/screens/home/search_screen.dart';

import '../../constant/colors.dart';
import '../../constant/fonts.dart';
import '../../constant/image_assets.dart';
import '../../widgets/input_field.dart';

class HomePageScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(

          statusBarIconBrightness: Brightness.light
      ),
      child: Scaffold(
        backgroundColor: AppColors.containerFillColor,
        body: Column(
          children: [
            Container(
              height: 210,
              color: AppColors.primaryColor,
              child: Column(
                children:  [
                  SizedBox(height: 40,),
                  ListTile(
                    leading:
                    Image.asset(assetProfileImage,  height: 50, width: 50,),
                    title: Row(
                      children:  [
                        Image.asset(assetNavigationImage, color: AppColors.whiteColor, height: 20, width: 20,),
                        const Text(" Your Location",
                          textAlign: TextAlign.start,
                          style: TextStyle(

                              fontFamily: AppFonts.Poppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),

                    subtitle:
                    Row(children: const [
                      Text("Chinedum, Odii, ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: AppFonts.Poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: AppColors.whiteColor
                        ),
                      ),

                      Icon(Icons.arrow_drop_down, size: 20, color: AppColors.whiteColor,),


                    ],) ,

                    trailing: const CircleAvatar(radius: 20, backgroundColor: Colors.transparent, backgroundImage : AssetImage(assetNotificationImage,  )),
                  ),


              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SearchScreen.routeName);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 4, 18, 0),
                  child: InputFieldTwo(
                    // controller: searchController,
                    enabled: false,
                    type: TextInputType
                        .text,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                      color: AppColors
                          .primaryColor,),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Image.asset(assetReceiptImage, height: 40, width: 40,),
                    ),
                    hint: 'Enter Receipt Number...',
                    onChanged: (v) {

                    },
                    color: AppColors
                        .textColor,
                    hintColor: AppColors
                        .textColor,
                    textColor: AppColors
                        .textColor,
                    focusedColor: AppColors
                        .grayColor,
                  ),
                ),
              ),



          ],
              ),
            ),

            Expanded(
              child: Container(
                height: 800,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(18.0, 14, 18, 0),
                          child: Text("Tracking",
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(18.0, 18, 18, 0),
                      child:
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

                                ListTile(

                                  title:
                                  const Text("Shipment Number",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(

                                        fontFamily: AppFonts.Poppins,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: AppColors.textColor
                                    ),
                                  ),


                                  subtitle:

                                  const Text("QEPIQRO208240042442",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: AppFonts.Poppins,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                        color: Colors.black
                                    ),
                                  ),



                                  trailing: Image.asset(assetDeliveryTruckImage, height: 100, width: 90,),
                                ),

                                Divider(),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 200,
                                      child: ListTile(
                                        leading: Image.asset(assetExport, height: 50, width: 50,),
                                        title:
                                        const Text("Sender",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(

                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontStyle: FontStyle.normal,
                                              color: AppColors.textColor
                                          ),
                                        ),


                                        subtitle:

                                        const Text("Atlanta, 5243",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.black
                                          ),
                                        ),




                                      ),
                                    ),
                                    Container(
                                      width: 180,
                                      child: const ListTile(

                                        title:
                                        Text("Time",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(

                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontStyle: FontStyle.normal,
                                              color: AppColors.textColor
                                          ),
                                        ),


                                        subtitle:

                                        Text("• 2 days - 3 days",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.black
                                          ),
                                        ),




                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 210,
                                      child: ListTile(

                                        leading: Image.asset(assetImport, height: 50, width: 50,),
                                        title:
                                        const Text("Receiver",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(

                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontStyle: FontStyle.normal,
                                              color: AppColors.textColor
                                          ),
                                        ),


                                        subtitle:

                                        const Text("Chicago, 6342",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.black
                                          ),
                                        ),




                                      ),
                                    ),
                                    Container(
                                      width: 180,
                                      child: const ListTile(

                                        title:
                                        Text("Status",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(

                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontStyle: FontStyle.normal,
                                              color: AppColors.textColor
                                          ),
                                        ),


                                        subtitle:

                                        Text("Waiting to collect",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: AppFonts.Poppins,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.black
                                          ),
                                        ),




                                      ),
                                    ),
                                  ],
                                ),

                                Divider(),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(18.0, 0, 18, 8),
                                      child: Text("+ Add Stop",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: AppFonts.Poppins,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            fontStyle: FontStyle.normal,
                                            color: AppColors.LightOrange
                                        ),
                                      ),
                                    ),




                                  ],),


                              ],
                            ),
                          )

                      ),
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text("Available vehicles",
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


                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0),
                      child: Container(
                        height: 220,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [

                            Container(
                              height: 200,
                              width: 200,
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
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Ocean freight",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: AppFonts.Poppins,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: AppColors.primaryTextColor,
                                      ),
                                    ),

                                    const Text("International",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: AppFonts.Poppins,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          fontStyle: FontStyle.normal,
                                          color: AppColors.textColor
                                      ),
                                    ),

                                    SizedBox(height: 20,),

                                    Image.asset(assetDeliveryTruckImage, height: 100, width: 300, fit: BoxFit.cover,),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 200,
                              width: 200,
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
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Cargo freight",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: AppFonts.Poppins,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: AppColors.primaryTextColor,
                                      ),
                                    ),

                                    const Text("Reliable",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: AppFonts.Poppins,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          fontStyle: FontStyle.normal,
                                          color: AppColors.textColor
                                      ),
                                    ),

                                    SizedBox(height: 20,),

                                    Image.asset(assetCargoFreight, height: 100, width: 300, fit: BoxFit.cover,),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 200,
                              width: 200,
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
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Air freight",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: AppFonts.Poppins,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: AppColors.primaryTextColor,
                                      ),
                                    ),

                                    const Text("International",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: AppFonts.Poppins,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          fontStyle: FontStyle.normal,
                                          color: AppColors.textColor
                                      ),
                                    ),

                                    SizedBox(height: 20,),

                                    Image.asset(assetDeliveryTruckImage, height: 100, width: 300, fit: BoxFit.cover,),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                )

              ),
            ),




          ],
        ),
      ),
    );
  }
}
