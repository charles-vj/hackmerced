import 'offer.dart';

class Hotel {
  final hotelId;
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
