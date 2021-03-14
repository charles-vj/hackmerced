import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_for_all/widgets/detail_card.dart';
import 'package:food_for_all/widgets/offer_card.dart';
import '../models/hotel.dart';

class SlidingCard extends StatelessWidget {
  final Hotel hotelDetail;
  SlidingCard({this.hotelDetail});
  List<Color> _color = [
    Colors.pink[100],
    Colors.green[200],
    Colors.orange[100],
    Colors.blue[200]
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: 60,
            height: 7,
            decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelDetail.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  hotelDetail.address,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailCard(
                      field: "Current Funds",
                      value: "Rs ${hotelDetail.currentFunds}",
                      color: Colors.green[200],
                    ),
                    DetailCard(
                      field: "Meals Served",
                      value: "${hotelDetail.mealsServed}",
                      color: Colors.red[200],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailCard(
                      field: "Total Funds Raised",
                      value: "Rs ${hotelDetail.totalFundsRaised}",
                      color: Colors.indigo[200],
                    ),
                    DetailCard(
                      field: "Points per Donation",
                      value: "${hotelDetail.pointsPerDonation}",
                      color: Colors.orange[200],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Offers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  height: 180,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotelDetail.currentOffers.length,
                      itemBuilder: (BuildContext, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OfferCard(
                            offer: hotelDetail.currentOffers[index],
                            color: _color[index % 4],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
