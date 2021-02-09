import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:country_list_pick/country_list_pick.dart';

class CurrencyPicker extends StatefulWidget {
  static const String id = 'currency_picker';

  @override
  _CurrencyPickerState createState() => _CurrencyPickerState();
}

class _CurrencyPickerState extends State<CurrencyPicker> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new CountryListPicker(),
        image: Image.asset('images/Duty Free Lens.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 150.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);
  }
}

class CountryListPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pick Your Home Country'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: CountryListPick(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: Text('Choisir un pays'),
            ),
            // if you need custome picker use this
            // pickerBuilder: (context, CountryCode countryCode) {
            //   return Row(
            //     children: [
            //       Image.asset(
            //         countryCode.flagUri,
            //         package: 'country_list_pick',
            //       ),
            //       Text(countryCode.code),
            //       Text(countryCode.dialCode),
            //     ],
            //   );
            // },
            theme: CountryTheme(
              isShowFlag: true,
              isShowTitle: true,
              isShowCode: false,
              isDownIcon: false,
              showEnglishName: true,
            ),
            initialSelection: '+62',
            onChanged: (CountryCode code) {
              print(code.name);
              print(code.code);
              print(code.dialCode);
              print(code.flagUri);
            },
          ),
        ),
      ),
    );
  }
}
