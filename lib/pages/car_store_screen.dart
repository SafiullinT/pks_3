import 'package:flutter/material.dart';
import '../models/car.dart';
import 'add_car_screen.dart';
import '../components/car_card.dart';

class CarStoreScreen extends StatefulWidget {
  final List<Car> cars;
  final Function addCar;

  CarStoreScreen({required this.cars, required this.addCar});

  @override
  _CarStoreScreenState createState() => _CarStoreScreenState();
}

class _CarStoreScreenState extends State<CarStoreScreen> {
  List<Car> cars = [];

  @override
  void initState() {
    super.initState();
    cars = widget.cars;
  }

  void _deleteCar(Car car) {
    setState(() {
      cars.remove(car);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Store'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return CarCard(
            car: car,
            onDeleteCar: () => _deleteCar(car), // Передаём функцию удаления
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCarScreen(onAddCar: (newCar) {
                setState(() {
                  cars.add(newCar);
                });
              }),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
