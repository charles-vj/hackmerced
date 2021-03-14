import 'package:flutter/material.dart';
import 'package:food_for_all/widgets/donate_textField.dart';
import 'package:food_for_all/widgets/payment_option.dart';

class DonationsPage extends StatelessWidget {
  static const routeName = '/donation-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text('Donate', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          iconSize: 35,
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Amount to donate: ",
                    style: TextStyle(
                      fontSize: 16.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DonateTextField(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Text(
                'Pay Using: ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            PaymentOption(
              imagePath: 'gpay.jpeg',
              title: 'Google Pay',
            ),
            PaymentOption(
              imagePath: 'phonepe.jpeg',
              title: 'Phone Pe',
            ),
            PaymentOption(
              imagePath: 'paytm.png',
              title: 'Paytm',
            ),
            PaymentOption(
              imagePath: 'upi.png',
              title: 'Other UPI Apps',
            ),
            PaymentOption(
              imagePath: 'card.png',
              title: 'Credit/Debit Card',
            ),
          ],
        ),
      ),
    );
  }
}
