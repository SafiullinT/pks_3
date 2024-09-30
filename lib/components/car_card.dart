import 'package:flutter/material.dart';
import '../models/car.dart';
import '../pages/car_detail_screen.dart';

class CarCard extends StatelessWidget {
  final Car car;
  final VoidCallback onDeleteCar;

  CarCard({required this.car, required this.onDeleteCar});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: Image.network(car.imageUrl, width: 100),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: onDeleteCar,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
