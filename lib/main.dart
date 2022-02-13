import 'package:crypto_wallet/constants.dart';
import 'package:crypto_wallet/price_screen.dart';
import 'package:crypto_wallet/utilities/create_material_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: createMaterialColor(kPrimary),
        ).copyWith(
          secondary: createMaterialColor(kSecondary),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: kSecondaryLight,
          ),
        ),
      ),
      home: PriceScreen(),
    );
  }
}
