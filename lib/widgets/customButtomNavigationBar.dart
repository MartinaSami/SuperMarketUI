import 'package:supermarket/file_export.dart';

import 'check_direction.dart';
class CustomBottomNavigationBar2 extends StatelessWidget {
  final bool isActiveIconHome;
  final bool isActiveIconInNotifications;
  final bool isActiveIconFavourites;
  final bool isActiveIconCart;
  final bool isActiveIconSettings;
  final bool onTapHome;
  final bool onTapNotifications;
  final bool onTapFavourites;
  final bool onTapCart;
  final bool onTapSettings;
  CustomBottomNavigationBar2(
      {this.isActiveIconHome: false,
      this.isActiveIconInNotifications : false,
      this.isActiveIconFavourites: false,
      this.isActiveIconCart: false,
        this.isActiveIconSettings: false,
      this.onTapHome: true,
      this.onTapNotifications: true,
      this.onTapFavourites: true,
      this.onTapSettings: true ,
      this.onTapCart: true ,
      });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return
      Container(
        child: checkDirection(dirArabic: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: greyColor,
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  )),
              height: height * .09,
              width: width,
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[





//                      ----------------------------------\
                      InkWell(
                          onTap: onTapSettings ==false ? (){print(" setting  pressed");} : () {
                            Navigator.of(context).pushNamed(SettingsScreen.routName);

                          },
                          child: isActiveIconSettings  == false
                              ? Container(
                              child: Icon(Icons.settings_outlined ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child:Icon(Icons.settings_outlined ,color: kmaincolor)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapCart  ==false ? (){print(" cart  pressed");} : () {
                            Navigator.of(context).pushNamed(ShoppingCartScreen.routName);

                          },
                          child: isActiveIconCart  == false
                              ? Container(
                              child: Icon(Icons.shopping_cart_outlined ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child:Icon(Icons.shopping_cart_outlined ,color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapFavourites ==false ? (){print(" favourit  pressed");} : () {
                            Navigator.of(context).pushNamed(FavouritesScreen.routName);

                          },
                          child: isActiveIconFavourites  == false
                              ? Container(
                              child: Icon(Icons.favorite_border ,color:greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child:Icon(Icons.favorite_border,color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapNotifications ==false ? (){print(" notifications pressed ");} : () {
                            Navigator.of(context).pushNamed(NotificationsScreen.routName);


                          },
                          child: isActiveIconInNotifications == false
                              ? Container(
                              child: Icon(Icons.notifications_none ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Icon(Icons.notifications_none,color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapHome ==false ? (){print(" home  pressed");} : () {
                            Navigator.of(context).pushNamed(HomeScreen.routName);

                          },
                          child: isActiveIconHome == false
                              ? Container(
                              child:  Icon(Icons.home_outlined ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Icon(Icons.home_outlined , color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),





                    ],
                  ),
                ),
              ),
            ),
          ],
        ),dirEnglish: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: greyColor,
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  )),
              height: height * .09,
              width: width,
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                          onTap: onTapHome ==false ? (){print(" home  pressed");} : () {
                            Navigator.of(context).pushNamed(HomeScreen.routName);

                          },
                          child: isActiveIconHome == false
                              ? Container(
                              child:  Icon(Icons.home_outlined ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Icon(Icons.home_outlined , color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapNotifications ==false ? (){print(" notifications pressed ");} : () {
                            Navigator.of(context).pushNamed(NotificationsScreen.routName);


                          },
                          child: isActiveIconInNotifications == false
                              ? Container(
                              child: Icon(Icons.notifications_none ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Icon(Icons.notifications_none,color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapFavourites ==false ? (){print(" favourit  pressed");} : () {
                            Navigator.of(context).pushNamed(FavouritesScreen.routName);

                          },
                          child: isActiveIconFavourites  == false
                              ? Container(
                              child: Icon(Icons.favorite_border ,color:greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child:Icon(Icons.favorite_border,color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapCart  ==false ? (){print(" cart  pressed");} : () {
                            Navigator.of(context).pushNamed(ShoppingCartScreen.routName);

                          },
                          child: isActiveIconCart  == false
                              ? Container(
                              child: Icon(Icons.shopping_cart_outlined ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child:Icon(Icons.shopping_cart_outlined ,color: kmaincolor,)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                      InkWell(
                          onTap: onTapSettings ==false ? (){print(" setting  pressed");} : () {
                            Navigator.of(context).pushNamed(SettingsScreen.routName);

                          },
                          child: isActiveIconSettings  == false
                              ? Container(
                              child: Icon(Icons.settings_outlined ,color: greyColor,)
                          )
                              : Stack(
                            children: [
                              Container(
                                  height: height * .2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: whiteColor),
                                  child: Container(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child:Icon(Icons.settings_outlined ,color: kmaincolor)
                                    ),
                                  )),
//                        redPoint will be here
                              Container()
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),)
      );
  }

  _onTap() {
    print("pressed");
  }
}
