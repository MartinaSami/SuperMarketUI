import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/check_direction.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';

class ShoppingCartScreen extends StatelessWidget {
  static const String routName = 'shopping_cart';
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
          child: Column(children: [
        CustomHeader(
          headerText: translator.translate("shopping_cart"),
          withoutShoppingCart: true,
        ),
        SizedBox(
          height: height * .0,
        ),
        Container(
          padding: EdgeInsets.only(
              right: width * .075,
              left: width * .075,
              top: height * .0,
              bottom: height * .0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(height * .05),
                  topRight: Radius.circular(height * .05)),
              color: backgroundColor),
          child: Container(
            height: height * .07,
            child: Column(
              children: [
                SizedBox(
                  height: height * .01,
                ),
                textSwipeLeft(context),
                SizedBox(
                  height: height * .01,
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          color: backgroundColor,
          child: _buildBody(context),
        ))
      ])),
      bottomNavigationBar: CustomBottomNavigationBar2(
        onTapCart: false,
        isActiveIconCart: true,
      ),
    );
  }

  _buildBody(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(height * .05),
              topLeft: Radius.circular(height * .05)),
          color: backgroundColor),
      child: Container(
        child: ListView(
          children: [
            listViewOfItems(context),
            SizedBox(
              height: height * .02,
            ),
            CustomSubmitAndSaveButton(
              buttonText: translator.translate("checkout"),
              onPressButton: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget listViewOfItems(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return (Container(
        height: height * .55,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: shoppingCartItem(context),
              );
            })));
  }

  Widget textSwipeLeft(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: width * .075),
      child: Row(
        mainAxisAlignment: checkDirection(dirArabic: MainAxisAlignment.end,dirEnglish: MainAxisAlignment.start,),
        children: [
          MyText(
              text: translator.translate("swipe_left"),
              size: height * .015,
              weight: FontWeight.bold,
              color: kmaincolor),
        ],
      ),
    );
  }

  Widget shoppingCartItem(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(height * .03),
                bottomLeft: Radius.circular(height * .03),
                topLeft: Radius.circular(height * .03),
                topRight: Radius.circular(height * .03),
              ),
            ),
            elevation: 5,
            shadowColor: kmaincolor,
            child: Container(
              margin: EdgeInsets.only(bottom: height * .015),
              child: FittedBox(
                child: Row(
                  children: [
                    Container(
                      width: width * .85,
                      padding: EdgeInsets.only(right: width * .0),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(height * .015),
                            bottomLeft: Radius.circular(height * .015),
                            topLeft: Radius.circular(height * .015),
                            topRight: Radius.circular(
                              height * .015,
                            )),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          checkDirection(
                              dirEnglish: Column(
                                children: [
                                  Card(
                                    elevation: 5,
                                    shadowColor: kmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomRight:
                                            Radius.circular(height * .015),
                                        bottomLeft:
                                            Radius.circular(height * .015),
                                        topLeft: Radius.circular(height * .015),
                                        topRight:
                                            Radius.circular(height * .015),
                                      ),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomRight:
                                              Radius.circular(height * .015),
                                          bottomLeft:
                                              Radius.circular(height * .015),
                                          topLeft:
                                              Radius.circular(height * .015),
                                          topRight:
                                              Radius.circular(height * .015),
                                        ),
                                        child: Image.asset(
                                          "assets/images/strawberry.jpg",
                                          height: height * .15,
                                          width: width * .21,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ],
                              ),
                              dirArabic: FittedBox(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FittedBox(
                                              child: Container(
                                                  child: MyText(
                                            text:translator.translate("product_name"),
                                            size: height * .02,
                                            weight: FontWeight.bold,
                                            color: kmaincolor,
                                          )))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FittedBox(
                                              child: Container(
                                                  child: MyText(
                                            text: "1000 SRA",
                                            size: height * .012,
                                            weight: FontWeight.bold,
                                          ))),
                                          SizedBox(
                                            width: width * .02,
                                          ),
                                          FittedBox(
                                              child: Container(
                                                  child: Row(
                                            children: [
                                              Text(
                                                "10000 SRA",
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
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
                                          ))),
                                          InkWell(
                                            onTap: () {
//                                setState(() {
//                                  counter ++ ;
//                                });
                                            },
                                            child: Container(
                                              height: height * .035,
                                              width: width * .1,
                                              decoration: BoxDecoration(
                                                  color: greyColor,
                                                  shape: BoxShape.circle),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: whiteColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * .02,
                                          ),
                                          MyText(
                                            text: "1",
                                            size: height * .03,
                                            color: blackColor,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(
                                            width: width * .02,
                                          ),
                                          Container(
                                            height: height * .035,
                                            width: width * .1,
                                            decoration: BoxDecoration(
                                                color: greyColor,
                                                shape: BoxShape.circle),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                color: whiteColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          checkDirection(
                              dirEnglish: FittedBox(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          FittedBox(
                                              child: Container(
                                                  child: MyText(
                                                    text:translator.translate("product_name"),
                                                    size: height * .02,
                                                    weight: FontWeight.bold,
                                                    color: kmaincolor,
                                                  )))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          FittedBox(
                                              child: Container(
                                                  child: MyText(
                                                    text: "1000 SRA",
                                                    size: height * .012,
                                                    weight: FontWeight.bold,
                                                  ))),
                                          SizedBox(
                                            width: width * .02,
                                          ),
                                          FittedBox(
                                              child: Container(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "10000 SRA",
                                                        style: TextStyle(
                                                            decoration: TextDecoration
                                                                .lineThrough,
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
                                                  ))),
                                          InkWell(
                                            onTap: () {
//                                setState(() {
//                                  counter ++ ;
//                                });
                                            },
                                            child: Container(
                                              height: height * .035,
                                              width: width * .1,
                                              decoration: BoxDecoration(
                                                  color: greyColor,
                                                  shape: BoxShape.circle),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: whiteColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * .02,
                                          ),
                                          MyText(
                                            text: "1",
                                            size: height * .03,
                                            color: blackColor,
                                            weight: FontWeight.bold,
                                          ),
                                          SizedBox(
                                            width: width * .02,
                                          ),
                                          Container(
                                            height: height * .035,
                                            width: width * .1,
                                            decoration: BoxDecoration(
                                                color: greyColor,
                                                shape: BoxShape.circle),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                color: whiteColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              dirArabic:  Column(
                                children: [
                                  Card(
                                    elevation: 5,
                                    shadowColor: kmaincolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomRight:
                                        Radius.circular(height * .015),
                                        bottomLeft:
                                        Radius.circular(height * .015),
                                        topLeft: Radius.circular(height * .015),
                                        topRight:
                                        Radius.circular(height * .015),
                                      ),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomRight:
                                          Radius.circular(height * .015),
                                          bottomLeft:
                                          Radius.circular(height * .015),
                                          topLeft:
                                          Radius.circular(height * .015),
                                          topRight:
                                          Radius.circular(height * .015),
                                        ),
                                        child: Image.asset(
                                          "assets/images/strawberry.jpg",
                                          height: height * .15,
                                          width: width * .21,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ],
                              ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
