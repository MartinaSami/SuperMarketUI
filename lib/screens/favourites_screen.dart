import 'package:supermarket/file_export.dart';
class FavouritesScreen extends StatelessWidget {
  static const String routName = 'favourites';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
          child: Column(
              children: [
                CustomHeader(headerText: translator.translate("my_favourites"),),

                SizedBox(height: height*.0,),
                Container(padding: EdgeInsets.only(right: width*.075,left: width*.075,top: height*.02,
                    bottom: height*.02),decoration:
                BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(height*.05),
                    topRight:Radius.circular(height*.05)),color: backgroundColor),

                  child: Container(height: height*.001,),),
                Expanded(child: Container(color: backgroundColor,
                    child: gridView(context)))

              ])),bottomNavigationBar:  CustomBottomNavigationBar2(
      onTapFavourites: false , isActiveIconFavourites: true,),
    );
  }

  Widget gridView(BuildContext context){
    return  GridView.builder(

        itemCount: 10,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: .8995,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xfff7f7f7),
                borderRadius: BorderRadius.all(
                  Radius.circular(0),


                ),


              ),
              child:customFavouritesImage(onTapImage: (){},context: context)
          );
        });
  }
  Widget redDotOverNotificationsIcon(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(width:height > width ?  width*.1 : width*.085,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width:  height > width ? width * .02 : width * .005,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red),padding: EdgeInsets.only(top: height*.06 ),
              ),
            ],
          ),
        ],
      ),
    ) ;
  }

}

