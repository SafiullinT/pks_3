import 'package:flutter/material.dart';
import '../models/car.dart';
import '../pages/car_detail_screen.dart';

class CarCard extends StatelessWidget {
  final Car car;

  CarCard({required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(
            car.imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover
        ),
        title: Text(car.name),
        subtitle: Text('${car.price} \$'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarDetailScreen(car: car),
            ),
          );
        },
      ),
    );
  }
}
