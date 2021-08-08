import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class SignInScreen extends StatelessWidget {
  static const String routName = 'login';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [
            CustomHeader(headerText:translator.translate("sign_in"),withoutShoppingCart: true,),
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
            SizedBox(height: height*.06,),


            SizedBox(height: height*.06,),

            emailTextField(context),
            SizedBox(height: height*.03,),

            passwordTextField(context),
            SizedBox(height: height*.02,),
            forgetPassword(context),
            SizedBox(height: height*.02,),

            signInButton(context),
            SizedBox(height: height*.01,),

            SizedBox(height: height*.01,),

            dontHaveAnAccount(context),


          ],
        ),
      ),
    );
  }

  Widget emailTextField(BuildContext context){
    double height = MediaQuery.of(context).size.height;

    return Container(height: height*.07,


        child: CustomTextField(secure: false, hint: translator.translate("email"),
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
                  child: MyText(text: translator.translate("forget_password"), size: height * .014, weight: FontWeight.bold,))),
        ],
      ),

    );

  }
  Widget signInButton(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        CustomSubmitAndSaveButton(buttonText: translator.translate("sign_in"),onPressButton: (){
          Navigator.of(context).pushNamed(HomeScreen.routName);
        },)
      ],),
    );

  }

  Widget dontHaveAnAccount(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        MyText(text:translator.translate("don\'t_have_an_account"), size: height*.015),
        InkWell(onTap: (){
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) {
                return SignUpScreen();
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
            child: MyText(text: translator.translate("sign_up"), size: height*.02,color: kmaincolor,)),


      ],),);
  }}
