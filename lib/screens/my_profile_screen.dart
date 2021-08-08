import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class MyProfileScreen extends StatelessWidget {
  static const String routName = 'my_profile';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [            CustomHeader(headerText: "My profile",),
            Expanded(child: buildBody(context))],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context ) {
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

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      SizedBox(
                        height: height * .3,
                      ),
                      Container(child: MyText(text:"It seems you didin\'t sign in yet !", size:height*.03)),
                    ],
                  ),

                  SizedBox(
                    height: height * 0,
                  ),
                  CustomSubmitAndSaveButton(buttonText: "sign in ",onPressButton: (){
                    Navigator.push(
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
                    );
                  },),
                  SizedBox(
                    height: height * .02,

                  ),
                ],
              ),
            )
//

        ));
  }

  Widget fullNameTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height * .07,
        width: width * .85,
        child: CustomTextField(
          secure: false,
          hint: "Full Name ",
          inputType: TextInputType.text,
          suffixIcon: null,
        ));
  }

  Widget emailAddressTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height * .07,
        width: width * .85,
        child: CustomTextField(
          secure: false,
          hint: "Email Address",
          inputType: TextInputType.emailAddress,
          suffixIcon: null,
        ));
  }

  Widget phoneNumberTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height * .07,
        width: width * .85,
        child: CustomTextField(
          secure: false,
          hint: "Phone Number ",
          inputType: TextInputType.number,
          suffixIcon: null,
        ));
  }



  Widget textPersonalInformation(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: width * .075, right: width * .075),
          child: MyText(
            text: "Personal Information ",
            size: height * .02,
            weight: FontWeight.w600,
          ),
        ),
      ],
    );
  }



}
