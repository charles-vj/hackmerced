import 'package:flutter/material.dart';
import 'package:food_for_all/screens/profile_page.dart';
import 'package:food_for_all/widgets/detail_card.dart';
import 'package:food_for_all/widgets/hotel_card.dart';
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
                InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(ProfilePage.routeName),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.green,
                    child: Text(
                      'A',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DetailCard(
                value: 'Rs 1,00,000',
                field: 'Funds Raised',
              ),
              DetailCard(
                value: '100',
                field: 'Meals Served',
              )
            ],
          ),
          SizedBox(
            height: 30,
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
            ),
          )
        ],
      ),
    ));
  }
}
