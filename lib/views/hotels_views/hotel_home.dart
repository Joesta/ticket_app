
import 'package:flutter/material.dart';
import 'package:ticket_app/views/hotels_views/hotel_home_page.dart';

class HotelHome extends StatelessWidget {
  const HotelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels'),
      ),
      body: const HotelHomePage(),
    );
  }
}
