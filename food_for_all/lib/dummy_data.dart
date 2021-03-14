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
    currentOffers: dummyOffers,
    imageUrl: 'https://media-cdn.tripadvisor.com/media/photo-s/1a/18/3a/cb/restaurant-le-47.jpg'
  ),
  Hotel(
    hotelId: '01',
    name: 'Pal Dhaba',
    address: 'Phase 7, Mohali, Punjab',
    currentFunds: 500,
    mealsServed: 3,
    pointsPerDonation: 1,
    totalFundsRaised: 800,
    currentOffers: dummyOffers,
    imageUrl: "https://www.theparkhotels.com/images/site-specific/kolkata/dining/dining_banner.jpg"
  ),
  Hotel(
    hotelId: '02',
    name: 'JW Marriot',
    address: 'Sector 35, Chandigarh',
    currentFunds: 10000,
    mealsServed: 10,
    pointsPerDonation: 2,
    totalFundsRaised: 20000,
    currentOffers: dummyOffers,
    imageUrl: "https://assets.gqindia.com/photos/5e43e03eb2f47c000817d35c/master/pass/Valentine's%20Day%20restaurants.jpg"
  ),
  Hotel(
    hotelId: '03',
    name: 'Uncle Jacks',
    address: 'Sector 35-C, Chandigarh',
    currentFunds: 1000,
    mealsServed: 6,
    pointsPerDonation: 2,
    totalFundsRaised: 3000,
    currentOffers: dummyOffers,
    imageUrl: "https://www.thebalancesmb.com/thmb/fC3Ur1TquzDxPnyRXomqPlNpMQk=/1885x1414/smart/filters:no_upscale()/waiter-serving-food-to-smiling-customers-at-restaurant-953947778-5c463ec0c9e77c00018a4b62.jpg"
  ),

];

List<Offer> dummyOffers = [
  Offer(
    offerId: 'AA',
    description: 'Get 30 per cent off on donation of Rs 1000 or more.',
    redeemCode: '0A0B0C',
    title: '30% Off',
    pointsRequired: 40,
  ),
  Offer(
    offerId: 'AB',
    description: 'Get Rs 150 cashback on donating Rs 3000 or more.',
    redeemCode: '0A0105',
    title: 'Rs 150 Cashback',
    pointsRequired: 20,
  ),
  Offer(
    offerId: 'AC',
    description: 'Buy 1 Get 1 Free on donation of Rs 5000 or more',
    redeemCode: '0011AA',
    title: 'Buy 1 Get 1 Free',
    pointsRequired: 100,
  ),
];