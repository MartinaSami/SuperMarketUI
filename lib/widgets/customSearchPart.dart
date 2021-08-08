import 'package:supermarket/file_export.dart';


Widget customSearchPart(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: width * .53,
            height: height * .07,
            child: Container(
              child: TextFormField(
                style: TextStyle(color: greyColor, fontSize: height * .016),
                cursorColor: greyColor,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: greyColor,
                    size: height * .035,
                  ),
                  hintText: "What Are You Loking For ? ",
                  hintStyle:
                  TextStyle(color: Colors.grey, fontSize: height * .013),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: kmaincolor)),
                ),
              ),
            )),
        Container(padding: EdgeInsets.all(height*.017),
          height: height * .075,
          width: width * .15,
          decoration:
          BoxDecoration(color: whiteColor, shape: BoxShape.circle),
          child: InkWell(onTap: (){

          },
              child: Image.asset("assets/images/sort_outline.png",width: width*.01,)),
        ),
        Container(padding: EdgeInsets.all(height*.017),
          height: height * .075,
          width: width * .15,
          decoration:
          BoxDecoration(color: whiteColor, shape: BoxShape.circle),
          child: InkWell(onTap: (){
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) {
                  return null;
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
              child: Image.asset("assets/images/filter_outline.png")),
        ),
      ],
    ),
  );
}