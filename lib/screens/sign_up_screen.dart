import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class SignUpScreen extends StatelessWidget {
  static const String routName = 'register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [
            CustomHeader(headerText:  translator.translate("sign_up"),withoutShoppingCart: true,),
            Container(
//
              child: Expanded(
                  child:

                  _buildBody(context)


              ),
            )

            ,],),
      ),

    )

    ;}
  _buildBody(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: backgroundColor,
          borderRadius:
          BorderRadius.only(topRight: Radius.circular(height*.05),
              topLeft:
              Radius.circular(height*.05))),
      child: Container(padding: EdgeInsets.only(left: width*.075,right: width*.075),
        child: ListView(
          children: [
            SizedBox(height: height*.1,),
            nameTextField(context),
            SizedBox(height: height*.02,),

            emailTextField(context),
            SizedBox(height: height*.02,),
            phoneTextField(context),
            SizedBox(height: height*.02,),
            passwordTextField(context),
            SizedBox(height: height*.02,),

            signInButton(context),
            SizedBox(height: height*.02,),
            alreadyHaveAnAccount(context) ,


          ],
        ),
      ),
    );
  }
  Widget phoneTextField(BuildContext context){
    double height = MediaQuery.of(context).size.height;

    return Container(height: height*.07,


        child: CustomTextField(secure: false, hint:  translator.translate("phone_number"),
          inputType:TextInputType.number , suffixIcon: null,));



  }
  Widget nameTextField(BuildContext context){
    double height = MediaQuery.of(context).size.height;

    return Container(height: height*.07,


        child: CustomTextField(secure: false, hint: translator.translate("name"),
          inputType:TextInputType.text , suffixIcon: null,));



  }
  Widget emailTextField(BuildContext context){
    double height = MediaQuery.of(context).size.height;

    return Container(height: height*.07,


        child: CustomTextField(secure: false, hint:  translator.translate("email"),
          inputType:TextInputType.emailAddress , suffixIcon: null,));



  }
  Widget passwordTextField(BuildContext context){
    double height = MediaQuery.of(context).size.height;

    return Container(height: height*.07,
        child: CustomTextField(secure: true, hint: translator.translate("password"),
          inputType:TextInputType.emailAddress , suffixIcon: Image.asset("assets/images/eye_on.png"),));
  }
  Widget forgetPassword(BuildContext context){
    double width = MediaQuery.of(context).size.width;


    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(onTap: (){
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) {
                  return ForgetPasswordScreen();
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

          },
              child: Container(padding: EdgeInsets.only(right: width*.03),
                  child: MyText(text: "Forget Password", size: height * .014, weight: FontWeight.bold,))),
        ],
      ),

    );

  }
  Widget signInButton(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        CustomSubmitAndSaveButton(buttonText:translator.translate("sign_up"),onPressButton: (){
          Navigator.of(context).pushNamed(HomeScreen.routName);
        },)
      ],),
    );

  }

  Widget alreadyHaveAnAccount(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        MyText(text:  translator.translate("already_have_an_account"), size: height*.015),
        InkWell(onTap: (){
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
        },
            child: MyText(text: translator.translate("sign_in"), size: height*.02,color: kmaincolor,)),


      ],),);
  }}
