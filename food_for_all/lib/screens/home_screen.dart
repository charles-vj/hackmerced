import 'package:flutter/material.dart';
import 'package:food_for_all/models/hotel.dart';
import 'package:food_for_all/screens/profile_page.dart';
import 'package:food_for_all/widgets/detail_card.dart';
import 'package:food_for_all/widgets/hotel_card.dart';
import 'package:provider/provider.dart';
import '../widgets/search_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _hotels = Provider.of<HotelsProvider>(context).hotels;
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
              itemCount: _hotels.length,
              itemBuilder: (context, index) {
                return HotelCard(
                  name: _hotels[index].name,
                  address: _hotels[index].address,
                  currentFunds: _hotels[index].currentFunds,
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
