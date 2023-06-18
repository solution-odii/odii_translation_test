
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/fonts.dart';
import '../constant/image_assets.dart';
import '../constant/text_strings.dart';

///Empty state for when i dont have any item to show on a particular widget tree
class EmptyState extends StatelessWidget {
  const EmptyState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(assetEmptyState, height: 62, width: 55,),
            SizedBox(height: 10,),
            Text(nothingToSee,
              textAlign: TextAlign.center,

              style: TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  color: AppColors.primaryColor2
              ),
            ),

            SizedBox(height: 10,),
            Text(yetToPerform,
              textAlign: TextAlign.center,

              style: TextStyle(
                  fontFamily: AppFonts.Poppins,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: AppColors.textColor
              ),
            ),
          ],
        ),
      ),
    );
  }
}
