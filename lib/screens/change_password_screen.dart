import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class ChangePasswordScreen extends StatelessWidget {
  static const String routName = 'change_password';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [            CustomHeader(headerText: "Change password ",),
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

                  SizedBox(
                    height: height * .02,
                  ),
                 oldPasswordTextField(context),
                  SizedBox(
                    height: height * .025,
                  ),
                 newPasswordTextField(context),
                  SizedBox(
                    height: height * .025,
                  ),
                confirmPasswordTextField(context),
                  SizedBox(
                    height: height * .3,
                  ),
                  CustomSubmitAndSaveButton(buttonText: "Save",onPressButton: (){},),
                  SizedBox(
                    height: height * .02,

                  ),
                ],
              ),
            )
//

        ));
  }

  Widget oldPasswordTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height * .07,
        width: width * .85,
        child: CustomTextField(
          secure: false,
          hint: "Old password",
          inputType: TextInputType.text,
          suffixIcon: null,
        ));
  }

  Widget newPasswordTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height * .07,
        width: width * .85,
        child: CustomTextField(
          secure: false,
          hint: "New password ",
          inputType: TextInputType.emailAddress,
          suffixIcon: null,
        ));
  }

  Widget confirmPasswordTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        height: height * .07,
        width: width * .85,
        child: CustomTextField(
          secure: false,
          hint: "Confirm password",
          inputType: TextInputType.number,
          suffixIcon: null,
        ));
  }

}
