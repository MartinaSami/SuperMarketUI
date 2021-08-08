import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:supermarket/file_export.dart';

import 'check_direction.dart';

Widget customProductDetailsImage({BuildContext context, Function onTapImage}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Row(
    children: [
//      SizedBox(
//        width: width * .03,
//      ),
      InkWell(
        onTap: onTapImage,
        child: Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(height * .015)),
            ),
            height: height * .2,
            width: width * .9,
            child: Row(mainAxisAlignment: checkDirection(dirEnglish: MainAxisAlignment.start,dirArabic: MainAxisAlignment.end),
              children: [

               checkDirection(dirArabic:  Container(
                 padding: EdgeInsets.only(left: width * .01),
                 child: Column(
                   children: [
                     SizedBox(
                       height: height * .02,
                     ),
                     Row(
                       children: [
                         MyText(
                             text: translator.translate("product_name"),
                             size: height * .017,
                             color: blackColor)
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Row(
                                   children: [
                                     Text(
                                       "10000 SRA",
                                       style: TextStyle(
                                           decoration:
                                           TextDecoration.lineThrough,
                                           fontSize: height * .009,
                                           color: greyColor),
                                     ),
                                     SizedBox(
                                       width: width * .0,
                                     ),
                                     MyText(
                                         text: "35%",
                                         size: height * .009,
                                         color: kmaincolor),
                                   ],
                                 ),
                                 SizedBox(
                                   width: width * .03,
                                 ),
                                 MyText(
                                   text: "l00000 \$",
                                   size: height * .022,
                                   color: blackColor,
                                   weight: FontWeight.normal,
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ],
                     ),
                     SizedBox(
                       height: height * .02,
                     ),
                     Row(
                       children: [
                         Container(
                             child: Icon(
                               Icons.shopping_cart,
                               size: height * .04,
                               color: greyColor,
                             )),
                         SizedBox(
                           width: width * .1,
                         ),
                         Container(
                           child: Icon(
                             Icons.favorite,
                             size: height * .04,
                             color: greyColor,
                           ),
                           padding: EdgeInsets.only(right: width * .06),
                         ),
                       ],
                     )
                   ],
                 ),
               ),dirEnglish:Stack(
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       borderRadius:
                       BorderRadius.all(Radius.circular(height * .015)),
                     ),
                     child: Card(
                       elevation: 5,
                       shadowColor: greyColor,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.only(
                           bottomRight: Radius.circular(height * .015),
                           bottomLeft: Radius.circular(height * .015),
                           topLeft: Radius.circular(height * .015),
                           topRight: Radius.circular(height * .015),
                         ),
                       ),
                       child: ClipRRect(
                           borderRadius: BorderRadius.all(
                               Radius.circular(height * .015)),
                           child: Image.asset(
                             "assets/images/burger2.jpg",
                             fit: BoxFit.cover,
                           )),
                     ),
                     height: height * .2,
                     width: width * .45,
                   ),
                 ],
               ),),
                SizedBox(width: width*.02,),
                checkDirection(dirArabic:Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(height * .015)),
                      ),
                      child: Card(
                        elevation: 5,
                        shadowColor: greyColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(height * .015),
                            bottomLeft: Radius.circular(height * .015),
                            topLeft: Radius.circular(height * .015),
                            topRight: Radius.circular(height * .015),
                          ),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(
                                Radius.circular(height * .015)),
                            child: Image.asset(
                              "assets/images/burger2.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      height: height * .2,
                      width: width * .45,
                    ),
                  ],
                ),dirEnglish: Container(
                  padding: EdgeInsets.only(left: width * .01),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * .02,
                      ),
                      Row(
                        children: [
                          MyText(
                              text: translator.translate("product_name"),
                              size: height * .017,
                              color: blackColor)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "10000 SRA",
                                        style: TextStyle(
                                            decoration:
                                            TextDecoration.lineThrough,
                                            fontSize: height * .009,
                                            color: greyColor),
                                      ),
                                      SizedBox(
                                        width: width * .0,
                                      ),
                                      MyText(
                                          text: "35%",
                                          size: height * .009,
                                          color: kmaincolor),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * .03,
                                  ),
                                  MyText(
                                    text: "l00000 \$",
                                    size: height * .022,
                                    color: blackColor,
                                    weight: FontWeight.normal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Row(
                        children: [
                          Container(
                              child: Icon(
                                Icons.shopping_cart,
                                size: height * .04,
                                color: greyColor,
                              )),
                          SizedBox(
                            width: width * .1,
                          ),
                          Container(
                            child: Icon(
                              Icons.favorite,
                              size: height * .04,
                              color: greyColor,
                            ),
                            padding: EdgeInsets.only(right: width * .06),
                          ),
                        ],
                      )
                    ],
                  ),
                )),



              ],
            )),
      ),
      SizedBox(width: width*.03,)
//     checkDirection(dirArabic:  SizedBox(
//
//     ),dirEnglish: SizedBox(  width: width * .05,)),
//      checkDirection(dirArabic:  SizedBox(
//        width: width * .05,
//      ),dirEnglish: SizedBox())
    ],
  );
}
