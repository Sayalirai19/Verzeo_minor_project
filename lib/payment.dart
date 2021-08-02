//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final razorpay = Razorpay();

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWallet);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paySuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, payError);
    super.initState();
  }

  void paySuccess(PaymentSuccessResponse response) {
    print(response.paymentId.toString());
  }

  void payError(PaymentFailureResponse response) {
    print(response.message);
  }

  void externalWallet(ExternalWalletResponse response) {
    print(response.walletName);
  }

  getPayment() {
    var option = {
      'key': "rzp_test_A8ZTswN0iWnwPa",
      'amount': double.parse(controller.text.trim()) * 100,
      'name': 'Sayali',
      'prefill': {'contact': '6543290', 'email': 'sayaliraigade1999@gmail.com'}
    };
    try {
      razorpay.open(option);
    } catch (e) {
      print('erroris $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () => getPayment(),
                color: Color(0xff6f35A5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Payment",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
