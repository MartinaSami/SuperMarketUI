import 'package:supermarket/file_export.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    super.initState();
    Timer(
//      duration time
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) =>HomeScreen())));
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width ;
    return Scaffold(
      backgroundColor: kmaincolor,
      body: SingleChildScrollView(
        child: Center(child: Stack(children: [
          Container(height: height,width: width,
            child:
            Image.asset("assets/images/cart2.jpg",fit:BoxFit.fitHeight ,),),
          Container(color: whiteColor.withOpacity(.6),height: height,width: width,child: Column(children: [
            SizedBox(height: height*.3,),
          Text("SHOPPING",style: TextStyle(color: kmaincolor ,fontSize: height*.07,letterSpacing: 8),),
            Text("Lorem ipsum dolor sit amet",style: TextStyle(color:kmaincolor ,fontSize: height*.015,letterSpacing: 5),),
            Text("Lorem ipsum ",style: TextStyle(color: kmaincolor ,fontSize: height*.015,letterSpacing: 5),),
            SizedBox(height: height*.05,),

            Icon(Icons.shopping_cart_outlined,color: kmaincolor,size: height*.07,),


          ],),)
        ],),),
      ),


    );
  }
}

