import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class EditMyProfileScreen extends StatelessWidget {
  static const String routName = 'edit_profile';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [            CustomHeader(headerText: "EDIT MY PROFILE INFO ",),
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
                  textPersonalInformation(context),
                  SizedBox(
                    height: height * .02,
                  ),
                  fullNameTextField(context),
                  SizedBox(
                    height: height * .025,
                  ),
                  emailAddressTextField(context),
                  SizedBox(
                    height: height * .025,
                  ),
                  phoneNumberTextField(context),
                  SizedBox(
                    height: height * .3,
                  ),
                  CustomSubmitAndSaveButton(buttonText: "SAVE",onPressButton: (){},),
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
