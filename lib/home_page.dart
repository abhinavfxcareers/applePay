import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
const _paymentItems = [
  PaymentItem(
    label: 'Demo Product',
    amount: '100',
    status: PaymentItemStatus.final_price,
  )
];
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple Pay'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ApplePayButton(
              paymentConfigurationAsset: 'applepay.json',
              paymentItems: _paymentItems,
              style: ApplePayButtonStyle.black,
              type: ApplePayButtonType.buy,
              width: 200,
              height: 50,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: (value) {
                print(value);
              },
              onError: (error) {
                print(error);
              },
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}