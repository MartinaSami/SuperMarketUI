import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/check_direction.dart';
class NotificationsScreen extends StatelessWidget {
  static const String routName = 'notifications';

  String notificationsTitle =  translator.translate("notification_title") ;
  String notificationsBody =  translator.translate("notification_body") ;
  String notificationsDate =  translator.translate("notification_date") ;
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(

        child: Column(
          children: [


            CustomHeader( headerText :translator.translate("notifications"),withoutShoppingCart: true,),
            Expanded(child: buildBody(context))],
        ),
      ),
      bottomNavigationBar:



      CustomBottomNavigationBar2(isActiveIconInNotifications : true, onTapNotifications : false ,),





    );
  }

  Widget buildBody(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(height * .05),
                topLeft: Radius.circular(height * .05)),
            color: backgroundColor),
        child: Container(
            child: listViewBuilderForNotifications(context)
//

        ));
  }
  Widget listViewBuilderForNotifications(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ListView.builder(

        scrollDirection: Axis.vertical,

        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(margin: EdgeInsets.only(bottom: height*.02),
              child: singleNotificationCard(context));
        }) ;
  }
  Widget singleNotificationCard (BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Card(elevation: 5,shadowColor: kmaincolor,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(height * .03),
              bottomLeft: Radius.circular(height * .03),
              topLeft: Radius.circular(height * .03),
              topRight: Radius.circular(height * .03),
            ),
          ),
            child: Container( padding: EdgeInsets.only(left: width*.02,
                right: width*.02,top: height*.05,bottom: height*.05 ) ,
              width: width*.9,decoration:
              BoxDecoration(color: whiteColor,borderRadius:
              BorderRadius.all(Radius.circular(height*.1)),),child: Column(
                mainAxisAlignment: MainAxisAlignment.start,children: [
                Container(

                    child: Row(mainAxisAlignment:  checkDirection(dirArabic: MainAxisAlignment.end ,dirEnglish: MainAxisAlignment.start),
                      children: [MyText(text: notificationsTitle, size: height*.02,color: kmaincolor,)],)),
                Container(

                  child: MyText(
                    size: height * .018,align:  checkDirection(dirArabic: TextAlign.right ,dirEnglish: TextAlign.left),
                    text: notificationsBody,
                  ),
                ),
                Container(

                    child: Row(mainAxisAlignment: checkDirection(dirArabic: MainAxisAlignment.start ,dirEnglish: MainAxisAlignment.end),
                      children:
                      [MyText(text: notificationsDate, size: height*.018,color: greyColor,)],)),

              ],
              ),),
          ),
        ),
      ],
    );
  }
  Widget redDotOverNotificationsIcon(BuildContext context ){
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
