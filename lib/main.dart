import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); // const tell during compile time that it create only once
}

// Types of Widgets
//1. StatelessWidget -> in this state is immutable means once it created then state can not be change
//2. Statefull widdget

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // This is constant constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
