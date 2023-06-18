import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odii_translation_test/models/shipment_history_model.dart';

import '../../constant/colors.dart';
import '../../constant/fonts.dart';
import '../../constant/image_assets.dart';
class ShipmentItemDesign extends StatelessWidget {
  final ShipmentHistory shipmentHistoryItem;
  const ShipmentItemDesign({Key key, this.shipmentHistoryItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

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

                  isThreeLine: true,
                  title: Padding(
                    padding: const EdgeInsets.only(right: 148.0),
                    child: Container(
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.15),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(buildIcon(shipmentHistoryItem.status), size: 15, color: buildColor(shipmentHistoryItem.status),),
                           SizedBox(width: 10,),
                           Text("${shipmentHistoryItem.status}",
                            textAlign: TextAlign.start,
                            style: TextStyle(

                                fontFamily: AppFonts.Poppins,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                color: buildColor(shipmentHistoryItem.status)
                            ),
                          ),
                        ],
                    ),
                      ),),
                  ),



                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("${shipmentHistoryItem.title}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: AppFonts.Poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.black
                        ),
                      ),

                      SizedBox(height: 5,),
                      Text("${shipmentHistoryItem.description}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: AppFonts.Poppins,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            color: AppColors.textColor
                        ),
                      ),

                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("${shipmentHistoryItem.amount}",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: AppColors.primaryColor
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("${shipmentHistoryItem.date}",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: AppFonts.Poppins,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                color: AppColors.textColor
                            ),
                          ),
                      ],),
                    ],
                  ),





                  trailing: Image.asset(assetDeliveryTruckImage, height: 100, width: 90,),
                ),



              ],
            ),
          )

      ),
    );
  }


  /// this methods checks for the transaction status and returns the color for each
  Color buildColor(String status) {
    if (status == 'in-progress') {
      return AppColors.goodGreen;
    } else if (status == 'loading') {
      return AppColors.blueGreen;
    } else if (status == 'pending') {
      return AppColors.LightOrange;
    }else if (status == 'cancelled') {
      return AppColors.badRedColor;
    }
    return AppColors.primaryColor;
  }

  /// this methods checks for the transaction status and returns the icon for each
  IconData buildIcon(String status) {
    if (status == 'in-progress') {
      return FontAwesomeIcons.refresh;
    } else if (status == 'loading') {
      return FontAwesomeIcons.clock;
    } else if (status == 'pending') {
      return FontAwesomeIcons.clock;
    }else if (status == 'cancelled') {
      return FontAwesomeIcons.cancel;
    }
    return FontAwesomeIcons.barsProgress;
  }
}
