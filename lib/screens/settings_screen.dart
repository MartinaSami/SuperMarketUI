import 'package:flutter/services.dart';
import 'package:supermarket/file_export.dart';
import 'package:supermarket/screens/languages_screen.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class SettingsScreen extends StatelessWidget {
  static const String routName = 'settings';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [            CustomHeader(headerText: translator.translate("settings"),withoutShoppingCart: true ,)
            , Expanded(child: buildBody(context))],
        ),
      ),
      bottomNavigationBar:  CustomBottomNavigationBar2(
        onTapSettings: false , isActiveIconSettings: true,),
    );
  }

  Widget buildBody(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(height * .05),
                topLeft: Radius.circular(height * .05)),
            color: backgroundColor),
        child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [


                  SizedBox(
                    height: height * .02,
                  ),
                 allSettingsItems(context),
                  SizedBox(
                    height: height * .0,
                  ),
                  CustomSubmitAndSaveButton(buttonText:translator.translate("logout"),onPressButton:
                      (){  Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) {
                            return SignInScreen();
                          },
                          transitionsBuilder:
                              (context, animation8, animation15, child) {
                            return FadeTransition(
                              opacity: animation8,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );},),
                  SizedBox(
                    height: height * .02,
                  ),
                ],
              ),
            )));}
  Widget allSettingsItems(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
        child: Container(
          width: width,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(height * .05))),
          child: Column(
            children: [

            SizedBox(
            height: height * .0,
          ),
            singleSettingRow( context,translator.translate("my_profile"), () {
              Navigator.of(context).pushNamed(MyProfileScreen.routName);}),

              SizedBox(
                height: height * .0,
              ),
              singleSettingRow( context,translator.translate("edit_my_profile"), () {
                Navigator.of(context).pushNamed(EditMyProfileScreen.routName);

              }),
              SizedBox(
                height: height * .02,
              ),
              singleSettingRow(context,translator.translate("change_password"), () {
                Navigator.of(context).pushNamed(ChangePasswordScreen.routName);


              }),
              SizedBox(
                height: height * .02,
              ),
              singleSettingRow(context,translator.translate("wallet"), () {

              }),
              SizedBox(
                height: height * .02,
              ),
              singleSettingRow(context,translator.translate("location"), () {
                Navigator.of(context).pushNamed(LocationScreen.routName);


              }),
              SizedBox(
                height: height * .02,
              ),
              singleSettingRow(context,translator.translate("languages"), () {
                Navigator.of(context).pushNamed(LanguagesScreen.routName);


              }),
              SizedBox(
                height: height * .02,
              ),
              singleSettingRow(context,translator.translate("payment_method"), () {


              }),
              SizedBox(
                height: height * .02,
              ),
            ],
          ),
        ));
  }
  Widget singleSettingRow( BuildContext context ,String text, onTapFunction ) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(elevation: 1,shadowColor: kmaincolor,shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(height * .015),
        bottomLeft: Radius.circular(height * .015),
        topLeft: Radius.circular(height * .015),
        topRight: Radius.circular(height * .015),
      ),
    ),
      child: InkWell(onTap: onTapFunction,
        child: Container(height: height*.08,width: width*.9,
          padding: EdgeInsets.only(left: width * .05, right: width * .05),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: text,color: greyColor,
                  size: height * .02,
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }





}