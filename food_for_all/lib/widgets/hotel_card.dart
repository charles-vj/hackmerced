import 'package:flutter/material.dart';
import 'package:food_for_all/models/hotel.dart';
import '../screens/hotel_details_screen.dart';

class HotelCard extends StatelessWidget {
  final Hotel hotel;

  HotelCard({this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
      child: InkWell(
        onTap: () =>
            Navigator.of(context).pushNamed(HotelDetailsScreen.routeName,arguments: {"hotel":hotel}),
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
                      hotel.imageUrl,
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
                      hotel.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      hotel.address,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Current funds: Rs ${hotel.currentFunds}',
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
