import 'package:flutter/material.dart';

void main() {
  runApp(HotelBookingApp());
}

class Hotel {
  final String name;
  final String location;
  final String imageUrl;
  Hotel(this.name, this.location, this.imageUrl,);
}

class HotelBookingApp extends StatelessWidget {
  final List<Hotel> hotels = [
    Hotel(
      'Hotel Malabar ',
      'Location ooty',
      'assets/images/image3.jpg',
    ),
    Hotel(
      'Hotel Dreams',
      'Location Munnar',
      'assets/images/image2.webp',
    ),
    Hotel(
      'Hotel Mermid',
      'Location Uduppi',
      'assets/images/image.jpg',

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('OYO',
          style: TextStyle(
            letterSpacing: 5,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
          )),
        ),
        body: ListView.builder(
          itemCount: hotels.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Handle tapping a hotel, e.g., navigate to details page
                // For simplicity, print the tapped hotel's name
                print('Tapped: ${hotels[index].name}');
              },
              child: Card(
                margin: EdgeInsets.all(8.0),
                elevation: 4.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      hotels[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotels[index].name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(hotels[index].location),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
