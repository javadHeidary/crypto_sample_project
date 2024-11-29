import 'package:crypto/wellcom_page.dart';
import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(CryptoApp());
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Regular'),
      debugShowCheckedModeBanner: false,
      home: WellcomPage(),
    );
  }
}
