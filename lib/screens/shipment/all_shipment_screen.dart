import 'package:flutter/material.dart';
import 'package:odii_translation_test/screens/shipment/shipment_item_design.dart';

import '../../models/shipment_history_model.dart';

class AllShipmentScreen extends StatefulWidget {
  final List<ShipmentHistory> shipments;
   AllShipmentScreen({Key key, this.shipments}) : super(key: key);

  @override
  State<AllShipmentScreen> createState() => _AllShipmentScreenState();
}

class _AllShipmentScreenState extends State<AllShipmentScreen> {
  bool showList = false;

  @override
  Widget build(BuildContext context) {
    ///Trying out some animation with timer delayed
    Future.delayed(Duration(milliseconds: 200), () {
      // add/remove item
      setState(() {
        showList = true;
      });

    });
    return Container(
      child:  AnimatedOpacity(
        opacity: showList ? 1.0 : 0.0, // Set the opacity based on the visibility
        duration: Duration(milliseconds: 300), // Set the duration of the animation
        curve: Curves.slowMiddle, //
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            ///this is a list view builder which returns the view for each item in the list
            return  ShipmentItemDesign(
                shipmentHistoryItem: widget.shipments[index]);
          },
          itemCount: widget.shipments.length,
        ),
      )
    );
  }
}
