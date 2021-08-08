import 'package:supermarket/file_export.dart';

import 'check_direction.dart';
class CustomHeader extends StatelessWidget {
  final String headerText ;
  final bool introScreen ;
  final bool withoutShoppingCart ;
  CustomHeader(
      {this.headerText : "" ,this.introScreen : false ,this.withoutShoppingCart : false });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return Container(
      child: Container(
        height: height * .16,
        color: whiteColor,
        padding: EdgeInsets.only(
            left: width * .075, right: width * .075, top: height * .05),
        child: Row(     mainAxisAlignment:checkDirection(dirArabic: MainAxisAlignment.end ,dirEnglish: MainAxisAlignment.start),

          children: [
            Container(
              child: Row(
                mainAxisAlignment:checkDirection(dirArabic: MainAxisAlignment.end ,dirEnglish: MainAxisAlignment.start),
                children: [
                  SizedBox(
                    width: width * .0,
                  ),
                  Container(
                      child: MyText(
                        text: headerText,color: greyColor,
                        size: height * .018,weight: FontWeight.bold,

                      )),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}