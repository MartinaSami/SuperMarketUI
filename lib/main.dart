import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:supermarket/file_export.dart';
import 'package:supermarket/screens/languages_screen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.asDefined,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/i18n/',
    apiKeyGoogle: '<Key>', // NOT YET TESTED
  );

  runApp(
    LocalizedApp(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
        home: Splash(),
//          ------------------------------------------------------------------------------ routs
        routes: {
          AboutUsScreen.routName: (context) => AboutUsScreen(),
          CategoriesScreen.routName: (context) => CategoriesScreen(),
          ChangeLanguageScreen.routName: (context) =>ChangeLanguageScreen(),
          ChoosePaymentMethodScreen.routName: (context) => ChoosePaymentMethodScreen(),
          EditMyProfileScreen.routName: (context) => EditMyProfileScreen(),
          MyProfileScreen.routName : (context) => MyProfileScreen(),
          FavouritesScreen.routName: (context) => FavouritesScreen(),
          ForgetPasswordScreen.routName: (context) => ForgetPasswordScreen(),
          HomeScreen.routName: (context) => HomeScreen(),
          LocationScreen.routName: (context) => LocationScreen(),
          SignInScreen.routName: (context) => SignInScreen(),
          NotificationsScreen.routName: (context) => NotificationsScreen(),
          ProductDetailsScreen.routName: (context) => ProductDetailsScreen(),
          AllProductsScreen.routName: (context) => AllProductsScreen(),
          SettingsScreen.routName: (context) => SettingsScreen(),
          ShoppingCartScreen.routName: (context) => ShoppingCartScreen(),
          SignUpScreen.routName: (context) => SignUpScreen(),
          TermsAndConditionsScreen.routName: (context) => TermsAndConditionsScreen(),
          ChangePasswordScreen.routName: (context) => ChangePasswordScreen(),
          LanguagesScreen.routName: (context) => LanguagesScreen(),
          WalletScreen.routName: (context) => WalletScreen(),},
//          --------------------------------------------------------------------------------
        theme: ThemeData(
            primaryColor: kmaincolor,
            accentColor: kmaincolor,
            fontFamily: "Cairo",
            textTheme: TextTheme(
              bodyText1: TextStyle(),
              bodyText2: TextStyle(),
            ).apply(
              bodyColor: textColor,
              displayColor: Colors.blue,
            )));
  }
}








