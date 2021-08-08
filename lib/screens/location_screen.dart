import 'dart:collection';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class LocationScreen extends StatelessWidget {
  static const String routName = 'location';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [topPart(context), Expanded(child: buildBody(context))],
        ),
      ),

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
//              ---------------------------------------------------------- first container in the stack
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * .03,
                            ),
//                         google maps
                            ClipRRect(
                              child: map(context),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                    height * .04,
                                  ),
                                  topLeft: Radius.circular(height * .04)),
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            CustomSubmitAndSaveButton(buttonText: "SAVE", onPressButton:(){})
                          ],
                        ),
                      ),
                      //                --------------------------------------------------------- end of first container
//              -------------------------------------------------------------------- start of second container of the stack

                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * .07,
                              ),
                              searchTextField(context)
                            ],
                          ),
                        ),
                      )
//              -------------------------------------------------------------------------- end of second container
                    ],
                  ),
                ],
              ),
            )
//

        ));
  }

  Widget topPart(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Container(
        height: height * .15,
        color: whiteColor,
        padding: EdgeInsets.only(
            left: width * .075, right: width * .075, top: height * .05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                "assets/images/logo.png",
                height: height * .03,
              ),
            ),
            InkWell(onTap: (){


            },
              child: Container(
                child: Image.asset(
                  "assets/images/search.png",
                  height: height * .03,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget map(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width,
          height: height * .6,
          child: GoogleMap(
            onMapCreated: _onMapCreated,
//            markers: markers,
//            circles: circles,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget addressTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
        height: height * .07,
        child: CustomTextField(
          secure: false,
          hint: "Address Title(Home ,Work,School,AirPort ...) *",
          inputType: TextInputType.emailAddress,
          suffixIcon: null,
        ));
  }

  Widget searchTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: height * .07,
            width: width * .85,
            child: CustomTextField(
              secure: false,
              hint: "Enter Your Location ",
              inputType: TextInputType.emailAddress,
              suffixIcon: null,
            )),
      ],
    );
  }

  Widget descriptionTextField(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
        height: height * .07,
        child: CustomTextField(
          secure: false,
          hint: "Description *",
          inputType: TextInputType.emailAddress,
          suffixIcon: null,
        ));
  }
  navigationToHome(BuildContext context){
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) {
          return HomeScreen();
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
  }


//  -----
//------
//------
//------
//  -------------------------------------------------------------------- all  google  maps functions and variables  here (start)

// first _  controller
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center =
  const LatLng(24.723201041398024, 46.67196272469909);

// second _ on map created
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
//    setState(() {
//      markers.add(
//        Marker(
//            markerId: MarkerId("1"),
//            position: LatLng(24.723201041398024, 46.67196272469909),
//            infoWindow: InfoWindow(
//              title: "Riyadh",
//            )),
//      );
//    }
//    );
  }

// third _  markers
  var markers = HashSet<Marker>();
  BitmapDescriptor customMarkerImage;
  getCustomMarker() async {
    customMarkerImage = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      'assets/images/cart.png',
    );
  }

//   finally _  circles
  Set<Circle> circles = Set.from([
    Circle(
        circleId: CircleId("1"),
        center: LatLng(24.723201041398024, 46.67196272469909),
        radius: 5000,
        fillColor: Colors.grey.withOpacity(.4),
        strokeWidth: 0,
        visible: true)
  ]);
//  -------------------------------------------------------------------- (end of google maps functions part )
}
