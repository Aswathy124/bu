import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.payment, // Payment icon
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Payment Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call a function to process in-app payment
                _processInAppPayment(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
              ),
              child: Text('Pay with In-App Payment'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _processInAppPayment(BuildContext context) async {
    //try {
      // Initialize the InAppPayment instance
     // final inAppPayment = InAppPayment.instance;

      // Process the payment
     // final paymentResult = await inAppPayment.startPayment(
        // Provide payment details here
     // );

      // Handle payment result
      //if (paymentResult) {
        // Payment successful
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Payment successful'),
            backgroundColor: Colors.green,
          ),
        );
      //} else {
        // Payment failed
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Payment failed'),
            backgroundColor: Colors.red,
          ),
        );
      }
  //  } catch (e) {
      // Handle any errors
      //print('Error processing payment: $e');
    //  ScaffoldMessenger.of(context).showSnackBar(
      //  SnackBar(
         // content: Text('Error processing payment'),
         // backgroundColor: Colors.red,
        //),
     // );
    }
  //}
//}

