import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/check_direction.dart';

Widget customFavouritesImage({BuildContext context , Function onTapImage }) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Row(
    children: [
      SizedBox(
        width: width * .03,
      ),
      InkWell(onTap: onTapImage ,
        child: Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(height * .015)),
          ),
          height: height*.5,
          width: width*.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(height * .015)),
                    ),
                    child: Card(elevation: 5,shadowColor: greyColor,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(height * .015),
                        bottomLeft: Radius.circular(height * .015),
                        topLeft: Radius.circular(height * .015),
                        topRight: Radius.circular(height * .015),
                      ),
                    ),
                      child: ClipRRect(
                          borderRadius:
                          BorderRadius.all(Radius.circular(height * .015)),
                          child: Image.asset(
                            "assets/images/burger2.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    height: height * .35,
                    width: width*.95,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0),
                        borderRadius:
                        BorderRadius.all(Radius.circular(height * .015)),
                      ),
                      height: height * .2,
                      width: width * .4,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: height * .14, left: width * .29),
                          ),
                        ],
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: width * .05 ,right: width*.05),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    checkDirection(dirArabic:  Row(
                      children: [Container(child: Icon(Icons.shopping_cart ,size: height*.03,color: greyColor,)),
                        SizedBox(width: width*.03,),
                        Container(child: Icon(Icons.favorite ,size: height*.03,color: kmaincolor,) ,padding: EdgeInsets.only(right: width*.06),),
                      ],), dirEnglish:  Column(
                      children: [

                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyText(
                                text: translator.translate("product_name"),
                                size: height * .017,
                                color: blackColor),

                          ],
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MyText(
                                text: "l00000 \$",
                                size: height * .017,
                                color: blackColor,
                                weight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [

                                Row(
                                  children: [
                                    Text(
                                      "10000 SRA",
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: height * .011,
                                          color: greyColor),
                                    ),
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    MyText(
                                        text: "35%",
                                        size: height * .011,
                                        color: kmaincolor),
                                  ],
                                )
                              ],
                            ),


                          ],
                        )
                      ],
                    ),),
                    checkDirection(dirArabic: Column(
                      children: [

                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyText(
                                text: translator.translate("product_name"),
                                size: height * .017,
                                color: blackColor),

                          ],
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MyText(
                                text: "l00000 \$",
                                size: height * .017,
                                color: blackColor,
                                weight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [

                                Row(
                                  children: [
                                    Text(
                                      "10000 SRA",
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: height * .011,
                                          color: greyColor),
                                    ),
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    MyText(
                                        text: "35%",
                                        size: height * .011,
                                        color: kmaincolor),
                                  ],
                                )
                              ],
                            ),


                          ],
                        )
                      ],
                    ), dirEnglish: Row(
                      children: [Container(child: Icon(Icons.shopping_cart ,size: height*.03,color: greyColor,)),
                        SizedBox(width: width*.03,),
                        Container(child: Icon(Icons.favorite ,size: height*.03,color: kmaincolor,) ,padding: EdgeInsets.only(right: width*.06),),
                      ],)),




                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    ],
  );
}