import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odii_translation_test/data/product_data.dart';

import '../../constant/colors.dart';
import '../../constant/fonts.dart';
import '../../constant/image_assets.dart';
import '../../models/product_model.dart';
import '../../widgets/input_field.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  bool showList = false;
  List<Product> filteredProducts;

  @override
  void initState() {
    // TODO: implement initState
      filteredProducts = allProducts;

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ///Trying out some animation with timer delayed

    Future.delayed(Duration(milliseconds: 200), () {
      // add/remove item
      setState(() {
        showList = true;
      });

    });
    return Scaffold(

      body: Container(
        color: AppColors.containerFillColor,
        child: Column(
          children: [
            Container(
              height: 160,
              color: AppColors.primaryColor,
              child: Column(
                children:  [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 25),
                        child: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 60, 18, 0),
                      child: Container(
                        width: 360,
                        child: InputFieldTwo(
                          // controller: searchController,

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

                            ///This method check if the field is empty then return full list
                            ///Else it filters through the list with enter character
                            ///and the updates the UI with data
                            ///Thought of using Mobx State management to handle this but no its just a simple logic
                            ///
                            if(v==null || v==""){
                             filteredProducts = allProducts;
                             setState(() {});
                            }else {
                              filteredProducts = allProducts.where((element) => element.title.toLowerCase().contains(v.toLowerCase())).toList();
                              setState(() {});
                            }
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





                ],
              ),
            ),



            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 18, 10, 0),
              child: Container(
                height: 400,
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
                  child: AnimatedOpacity(
                    opacity: showList ? 1.0 : 0.0, // Set the opacity based on the visibility
                    duration: Duration(milliseconds: 500), // Set the duration of the animation
                    curve: Curves.easeInOut, // Set the animation
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        ///this is a list view builder which returns the view for each item in the list
                        return   Padding(
                          padding:  EdgeInsets.all(0.0),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),

                              ListTile(
                                leading: Image.asset("assets/images/img.png", height: 50, width: 50,),
                                title:
                                 Text("${filteredProducts[index].title}",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: AppFonts.Poppins,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black

                                  ),
                                ),


                                subtitle:

                                 Text("${filteredProducts[index].description}",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: AppFonts.Poppins,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: AppColors.textColor
                                  ),
                                ),




                              ),

                              Divider(),


                            ],
                          ),
                        );
                      },
                      itemCount: filteredProducts.length,
                    ),
                  )



              ),
            ),



          ],
        ),
      ),
    );
  }
}
