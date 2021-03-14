import 'package:flutter/material.dart';
import 'package:food_for_all/widgets/hotel_card.dart';
import '../widgets/hotel_tile.dart';
import '../widgets/search_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchButton(),
                CircleAvatar(
                  radius: 23,
                ),
              ],
            ),
          ),
          Placeholder(
            fallbackHeight: 200,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return HotelCard(
                name: 'Restaurant XYZ',
                address: 'Sector 35-C, Chandigarh',
                currentFunds: 500,
              );
            },
          ))
        ],
      ),
    ));
  }
}
