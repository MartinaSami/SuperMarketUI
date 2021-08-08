import 'package:supermarket/file_export.dart';

class CustomSubmitAndSaveButton extends StatelessWidget {

  final String buttonText;
  final Function onPressButton ;


  CustomSubmitAndSaveButton(
      { this.buttonText: "custom button "  ,  this.onPressButton });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            givenHeight: height * .06,
            givenWidth: width * .4,
            onTapFunction: onPressButton ,
            text: buttonText,
            fontSize: height * .022,
            radius: height * .02,
          ),
        ],
      ),
    );
  }
}