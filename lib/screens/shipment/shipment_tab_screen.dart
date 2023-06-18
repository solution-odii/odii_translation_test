import 'package:flutter/material.dart';
import 'package:odii_translation_test/constant/colors.dart';
import 'package:odii_translation_test/data/all_shipments_data.dart';
import 'package:odii_translation_test/screens/dashboard/dashboard_screen.dart';
import 'package:odii_translation_test/screens/shipment/all_shipment_screen.dart';


import '../../constant/fonts.dart';

class ShipmentTabScreen extends StatelessWidget {

  static const routeName = '/shipment';


  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 5,
        child: Scaffold(
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
            bottom:  TabBar(
              indicatorColor: Colors.orange,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              tabs: [
                ///Set up the tab title and design
                Tab( child: SizedBox(
                  width: 70,
                  child: Row(children: [
                    const Text("All",
                      style: TextStyle(

                          fontFamily: AppFonts.Poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color: Colors.white
                      ),),
                    SizedBox(width: 5,),
                    Container(

                        decoration:  BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 1, 8, 1),
                          child: Text("${allShipments.length}",
                            style: const TextStyle(

                              fontFamily: AppFonts.Poppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              color: Colors.white
                          ),),
                        )),
              ],)


                ),),
                Tab( child: SizedBox(
                  width: 105,
                  child: Row(children: [
                    const Text("Completed",
                      style: TextStyle(

                          fontFamily: AppFonts.Poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color: Colors.white
                      ),),
                    SizedBox(width: 5,),
                    Container(

                        decoration:  BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 1, 8, 1),
                          child: Text("${allShipments.where((element) => element.status=="completed").length}",
                            style: TextStyle(

                              fontFamily: AppFonts.Poppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              color: Colors.white
                          ),),
                        )),
              ],)


                ),),
                Tab( child: SizedBox(
                  width: 100,
                  child: Row(children: [
                    const Text("In Progress",
                      style: TextStyle(

                          fontFamily: AppFonts.Poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color: Colors.white
                      ),),
                    SizedBox(width: 5,),
                    Container(

                        decoration:  BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 1, 8, 1),
                          child: Text("${allShipments.where((element) => element.status=="in-progress").length}",
                            style: TextStyle(

                              fontFamily: AppFonts.Poppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              color: Colors.white
                          ),),
                        )),
              ],)


                ),),
                Tab( child: SizedBox(
                  width: 122,
                  child: Row(children: [
                    const Text("Pending order",
                      style: TextStyle(

                          fontFamily: AppFonts.Poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color: Colors.white
                      ),),
                    SizedBox(width: 5,),
                    Container(

                        decoration:  BoxDecoration(
                          color: Colors.grey.withOpacity(.15),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:  Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 1, 8, 1),
                          child: Text("${allShipments.where((element) => element.status=="pending").length}",
                            style: TextStyle(

                              fontFamily: AppFonts.Poppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              color: Colors.white
                          ),),
                        )),
              ],)


                ),),
                Tab( child: SizedBox(
                  width: 100,
                  child: Row(children: const [
                    Text("Cancelled",
                      style: TextStyle(

                          fontFamily: AppFonts.Poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color: Colors.white
                      ),),

              ],)


                ),),


              ],
            ),
            title: const Text('Shipment History',   style: TextStyle(

                fontFamily: AppFonts.Poppins,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                color: Colors.white
            ),),

          ),
          body:
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text("Shipments",
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

            /// This logic check through the shipment list and filter by transaction status before passing to the listview
            /// Some cute stuff right lol
            SizedBox(
              height: 600,
              child: TabBarView(
                children: [
                  AllShipmentScreen(shipments: allShipments,),
                  AllShipmentScreen(shipments: allShipments.where((element) => element.status=="completed").toList()),
                  AllShipmentScreen(shipments: allShipments.where((element) => element.status=="in-progress").toList()),
                  AllShipmentScreen(shipments: allShipments.where((element) => element.status=="pending").toList()),
                  AllShipmentScreen(shipments: allShipments.where((element) => element.status=="cancelled").toList()),


                ],
              ),
            ),
          ],)

        ),

    );
  }
}