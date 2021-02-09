import 'package:flutter/material.dart';
import 'screens/currency_picker.dart';
import 'screens/lens_view.dart';

void main() {
  runApp(DutyFreeLens());
}

class DutyFreeLens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CurrencyPicker.id,
      routes: {
        CurrencyPicker.id: (context) => CurrencyPicker(),
        // LensView.id: (context) => LensView(),
      },
    );
  }
}
