import 'package:flutter/material.dart';
import 'pages/car_store_screen.dart';

void main() {
  runApp(CarStoreApp());
}

class CarStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarStore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarStoreScreen(),
    );
  }
}
