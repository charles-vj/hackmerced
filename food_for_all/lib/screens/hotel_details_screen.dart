import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../widgets/sliding_card.dart';

class HotelDetailsScreen extends StatelessWidget {
  static const routeName = '/hotel-detail-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 60,
        child: FloatingActionButton.extended(
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
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          onPressed: () {},
          isExtended: true,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SlidingUpPanel(
          panel: SlidingCard(),
          minHeight: MediaQuery.of(context).size.height * 0.51,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
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
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          'https://media-cdn.tripadvisor.com/media/photo-s/1a/18/3a/cb/restaurant-le-47.jpg',
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
