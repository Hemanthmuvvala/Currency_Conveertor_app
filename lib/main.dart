import 'package:flutter/material.dart';
import 'package:my_app/currency_conv.dart';
//import 'package:my_app/screen/Row_Col.dart';
//import 'package:my_app/screen/images_wid.dart';

void main() {
  runApp( EcoBinApp());
}

class EcoBinApp extends StatelessWidget {
  @override
  const EcoBinApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:currency_conv(),
    );
  }
}
