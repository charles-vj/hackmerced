import 'package:flutter/cupertino.dart';
import 'package:food_for_all/dummy_data.dart';

import 'offer.dart';

class Hotel {
  final String hotelId;
  final String name;
  final String address;
  double totalFundsRaised;
  double currentFunds;
  int mealsServed;
  final int pointsPerDonation;
  List<Offer> currentOffers;

  Hotel({
    this.name,
    this.address,
    this.totalFundsRaised,
    this.currentFunds,
    this.currentOffers,
    this.mealsServed,
    this.pointsPerDonation,
    this.hotelId,
  });
}

class HotelsProvider with ChangeNotifier {
  List<Hotel> _hotels = dummyHotelsList;

  List<Hotel> get hotels {
    return [..._hotels];
  }
}
