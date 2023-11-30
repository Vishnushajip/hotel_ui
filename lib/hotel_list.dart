import 'package:flutter/material.dart';

import 'booking.dart';

void main() {
  runApp(HotelBookingApp());
}

class HotelBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelListScreen(),
    );
  }
}

class HotelListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Hotel ${index + 1}'),
            subtitle: Text('Price: \$${80 + index * 20} per night'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HotelBookingDetailsScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
