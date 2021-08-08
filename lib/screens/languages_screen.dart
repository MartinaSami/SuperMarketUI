import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:supermarket/file_export.dart';
import 'package:supermarket/widgets/customSubmitAndSaveButton.dart';
class LanguagesScreen extends StatelessWidget {
  static const String routName = 'lnguages';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
          children: [CustomHeader(headerText: "Languages",),
            Expanded(child: buildBody(context))],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context ) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(height * .05),
                topLeft: Radius.circular(height * .05)),
            color: backgroundColor),
        child: Container(
            child: SingleChildScrollView(
              child:

                  Container(padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            translator.setNewLanguage(
                              context,
                              newLanguage: 'ar',
                              remember: true,
                              restart: true,
                            );
                          },

                          title: Text(
                            translator.translate('arabic'),
                          ),
                        ),

                        ListTile(
                          onTap: () {
                            translator.setNewLanguage(
                              context,
                              newLanguage: 'en',
                              remember: true,
                              restart: true,
                            );
                          },
                          title: Text(
                            translator.translate('english'),
                          ),
                        )
                      ],
                    ),
                  ),

            )
//

        ));
  }


}
