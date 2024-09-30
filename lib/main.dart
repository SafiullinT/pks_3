import 'package:flutter/material.dart';
import 'pages/car_store_screen.dart';
import 'pages/add_car_screen.dart';
import 'models/car.dart';

void main() {
  runApp(CarStoreApp());
}

class CarStoreApp extends StatefulWidget {
  @override
  _CarStoreAppState createState() => _CarStoreAppState();
}

class _CarStoreAppState extends State<CarStoreApp> {
  List<Car> cars = [
    Car(
      'Tesla Model S',
      'https://www.zr.ru/d/story/c4/924100/tesla-model-s-samyj-dalnobojnyj-elektromobil.jpg',
      79999,
      'Электрический седан с невероятным запасом хода и высокой производительностью.',
      '1020 л.с.',
      '2.1 сек до 100 км/ч',
      'Электрический',
      '322 км/ч',
    ),

  ];

  void addCar(Car newCar) {
    setState(() {
      cars.add(newCar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarStoreScreen(cars: cars, addCar: addCar),
    );
  }
}
