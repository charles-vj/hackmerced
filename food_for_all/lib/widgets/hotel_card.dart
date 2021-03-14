import 'package:flutter/material.dart';
import '../screens/hotel_details_screen.dart';

class HotelCard extends StatelessWidget {
  final String name;
  final String address;
  final double currentFunds;

  HotelCard({this.name, this.address, this.currentFunds});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(HotelDetailsScreen.routeName),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://media-cdn.tripadvisor.com/media/photo-s/1a/18/3a/cb/restaurant-le-47.jpg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      address,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Current funds: Rs $currentFunds',
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
