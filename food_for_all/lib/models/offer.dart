class Offer {
  final String offerId;
  final String title;
  final String description;
  final String redeemCode;
  final double pointsRequired;

  Offer(
      {this.description,
      this.pointsRequired,
      this.offerId,
      this.redeemCode,
      this.title});
}
