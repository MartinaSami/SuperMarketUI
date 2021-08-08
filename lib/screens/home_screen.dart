import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/check_direction.dart';
class HomeScreen extends StatelessWidget {
  static const String routName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [topPart(context), Expanded(child: _buildBody(context))],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar2(
        onTapHome: false , isActiveIconHome: true,),
    );
  }

  // all scrolled  widgets in build body
  _buildBody(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(height * .0),
              topLeft: Radius.circular(height * .0)),
          color: backgroundColor),
      child: Container(
        child: ListView(
          children: [
            topSlider(context),
            SizedBox(height: height*.01,),
            textCategory(context),
            SizedBox(height: height*.01,),
            categoriesSlider(context),
            SizedBox(height: height*.01,),
            textOffers(context),
            SizedBox(height: height*.01,),
            offersSlider(context),
            SizedBox(height: height*.01,),
            textRecommendedProducts(context),
            SizedBox(height: height*.02,),
            recommendedProductsSlider(context),
            SizedBox(height: height*.02,),],)),);}


  Widget topPart(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Container(
        height: height * .2,
        color: kmaincolor,
        padding: EdgeInsets.only(
            left: width * .075, right: width * .075, top: height * .05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

          checkDirection(dirEnglish:   MyText(text:translator.translate("welcome"),size: height*.03,color: whiteColor, weight: FontWeight.bold,),dirArabic:   InkWell(onTap: (){
          },
            child: Container(
                child:Icon(Icons.search ,color: whiteColor,size: height*.05,)
            ),
          ),),
//            Container(
//              child: Image.asset(
//                "assets/images/logo.png",
//                height: height * .03,
//              ),
//            )
          SizedBox(width: width*.31,),
            checkDirection(dirArabic:   MyText(text:translator.translate("welcome"),size: height*.03,color: whiteColor, weight: FontWeight.bold,),dirEnglish:   InkWell(onTap: (){
            },
              child: Container(
                  child:Icon(Icons.search ,color: whiteColor,size: height*.05,)
              ),
            ),),


          ],
        ),
      ),
    );
  }
  Widget topSlider(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height * .3,
        width: width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: height * .28,
                        width: width,
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/cart2.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(
                                height * .0,
                              ),
                              topLeft: Radius.circular(height * .0)),
                        ),
                      ),
                    ],
                  ),SizedBox(width: width*.07,)
                ],
              );
            }));


  }
  Widget textCategory(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: width * .05, right: width * .05),
      child: Row(
        mainAxisAlignment: checkDirection(dirArabic: MainAxisAlignment.end,dirEnglish:MainAxisAlignment.start,),
        children: [
          MyText(
            text: translator.translate("categories"),size: height*.018,weight: FontWeight.bold,
            color: greyColor,
          ),
        ],
      ),
    );
  }
  Widget categoriesSlider(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height * .2,
        width: width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(onTap: (){


              },
                child: Row(
                  children: [
                    SizedBox(
                      width: width * .01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(height * .015)),
                      ),
                      height: height * .3,
                      width: width * .5,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(height * .015)),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(height * .015)),
                                child: Image.asset(
                                  "assets/images/orange.jpg",
                                  fit: BoxFit.cover,
                                )),
                            height: height * .2,
                            width: width * .4,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: kmaincolor.withOpacity(0.1),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(height * .015)),
                            ),
                            height: height * .2,
                            width: width * .4,
                            child: Container(alignment: checkDirection(dirEnglish:  Alignment.bottomLeft,dirArabic: Alignment.bottomRight,),
                                padding: EdgeInsets.only(
                                    left: width*.02 , right: width * .02),
                                child: MyText(
                                  text: translator.translate("categories"),
                                  color: whiteColor,size: height*.023,weight: FontWeight.bold,
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
  Widget textOffers(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: width * .05, right: width * .05),
      child: Row(
        mainAxisAlignment: checkDirection(dirArabic: MainAxisAlignment.end,dirEnglish:MainAxisAlignment.start,),
        children: [
          MyText(
            text:translator.translate("offers"),size: height*.018,weight: FontWeight.bold,
            color: greyColor,
          ),
        ],
      ),
    );
  }
  Widget offersSlider(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height * .2,
        width: width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return customProductDetailsImage(onTapImage: (){},context: context );
            }));
  }
  Widget textRecommendedProducts(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: width * .05, right: width * .05),
      child: Row(mainAxisAlignment: checkDirection(dirArabic: MainAxisAlignment.end,dirEnglish:MainAxisAlignment.start,),
        children: [
          MyText(text:
            translator.translate("recommended"),
            size: height*.018,weight: FontWeight.bold,
            color: greyColor,
          ),

        ],
      ),
    );
  }
  Widget recommendedProductsSlider(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height * .2,
        width: width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return customProductDetailsImage(context: context);
            }));
  }
}
