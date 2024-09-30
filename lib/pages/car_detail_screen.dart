import 'package:flutter/material.dart';
import '../models/car.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  CarDetailScreen({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(car.imageUrl, width: 300, height: 200),
            SizedBox(height: 20),
            Text(
              car.description,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Цена: ${car.price} \$',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text(
              'Характеристики:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Мощность: ${car.horsepower}', style: TextStyle(fontSize: 16)),
            Text('Разгон до 100 км/ч: ${car.acceleration}', style: TextStyle(fontSize: 16)),
            Text('Тип двигателя: ${car.engineType}', style: TextStyle(fontSize: 16)),
            Text('Максимальная скорость: ${car.maxSpeed}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
