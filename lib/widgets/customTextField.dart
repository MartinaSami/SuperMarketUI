import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:supermarket/file_export.dart';

import 'check_direction.dart';
class CustomTextField extends StatelessWidget {
  final String hint;
  final bool  secure ;
  Widget suffixIcon ;
 
  final TextInputType inputType ;
  String _errorMessage (String str) {
    switch (hint) {
      case 'Enter your name':
        return 'Name is empty !';
      case 'Enter your email':
        return 'Email is empty !';
      case 'Enter your password':
        return 'Password is empty !';
    }
  }
  CustomTextField(
      {@required this.secure, @required this.hint ,@required this.inputType ,this.suffixIcon : null,} );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;
    return Container(

      child: TextFormField(textAlign: checkDirection(dirArabic: TextAlign.right ,dirEnglish: TextAlign.left),
        keyboardType: inputType,
        style: TextStyle(color:greyColor,fontSize: height*.016),
        obscureText: secure,
        cursorColor: greyColor,
        decoration: InputDecoration(
          prefixIcon:secure == true ?
          checkDirection(dirEnglish: null,dirArabic: Icon(Icons.remove_red_eye,color: greyColor,size: height*.04,),):null,
          suffixIcon: secure == true ?
          checkDirection(dirEnglish: Icon(Icons.remove_red_eye,color: greyColor,size: height*.04,),dirArabic: null):null,
          hintText: translator.translate(hint),
          hintStyle: TextStyle(color: greyColor.withOpacity(.8,),fontWeight: FontWeight.bold,fontSize: height*.018),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: greyColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color:greyColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: greyColor)),),),);}}