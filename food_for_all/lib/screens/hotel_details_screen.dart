import 'package:flutter/material.dart';
import 'package:food_for_all/models/hotel.dart';
import 'package:food_for_all/screens/donation_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../widgets/sliding_card.dart';

class HotelDetailsScreen extends StatelessWidget {
  static const routeName = '/hotel-detail-screen';

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    print(args["hotel"]);
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 60,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.black87,
          label: Row(
            children: [
              Text(
                "Donate",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 20),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.chevron_right,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          onPressed: () => Navigator.of(context).pushNamed(
            DonationsPage.routeName,
          ),
          isExtended: true,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SlidingUpPanel(
          panel: SlidingCard(hotelDetail: args["hotel"]),
          minHeight: MediaQuery.of(context).size.height * 0.51,
          maxHeight: MediaQuery.of(context).size.height * 0.85,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          args["hotel"].imageUrl,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: IconButton(
                      icon: Icon(Icons.chevron_left),
                      color: Colors.black,
                      iconSize: 40,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
