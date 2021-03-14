import 'models/hotel.dart';
import 'models/offer.dart';

List<Hotel> dummyHotelsList = [
  Hotel(
    hotelId: '00',
    name: 'Bittu Dhaba',
    address: 'Phase 7, Mohali, Punjab',
    currentFunds: 400,
    mealsServed: 5,
    pointsPerDonation: 1,
    totalFundsRaised: 1000,
    currentOffers: dummyOffers
  ),
  Hotel(
    hotelId: '01',
    name: 'Pal Dhaba',
    address: 'Phase 7, Mohali, Punjab',
    currentFunds: 500,
    mealsServed: 3,
    pointsPerDonation: 1,
    totalFundsRaised: 800,
    currentOffers: dummyOffers
  ),
  Hotel(
    hotelId: '02',
    name: 'JW Marriot',
    address: 'Sector 35, Chandigarh',
    currentFunds: 10000,
    mealsServed: 10,
    pointsPerDonation: 2,
    totalFundsRaised: 20000,
    currentOffers: dummyOffers
  ),
  Hotel(
    hotelId: '03',
    name: 'Uncle Jacks',
    address: 'Sector 35-C, Chandigarh',
    currentFunds: 1000,
    mealsServed: 6,
    pointsPerDonation: 2,
    totalFundsRaised: 3000,
    currentOffers: dummyOffers
  ),

];

List<Offer> dummyOffers = [
  Offer(
    offerId: 'AA',
    description: 'Offer Description',
    redeemCode: '0A0B0C',
    title: '30% Off',
    pointsRequired: 40,
  ),
  Offer(
    offerId: 'AB',
    description: 'Offer Description',
    redeemCode: '0A0105',
    title: '15% Off',
    pointsRequired: 20,
  ),
  Offer(
    offerId: 'AC',
    description: 'Offer Description',
    redeemCode: '0011AA',
    title: 'Buy 1 Get 1 Free',
    pointsRequired: 100,
  ),
];