import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stripe_payment_integration/controllers/payment_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PaymentController controller = Get.put(PaymentController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // InkWell(
          //   onTap: () {
          //     controller.makePayment(amount: '1000', currency: 'USD');
          //     print('hello');
          //   },
          //   child: Center(
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: Colors.black,
          //         borderRadius: BorderRadius.circular(20),
          //         boxShadow: const [
          //           BoxShadow(
          //             color: Colors.black12,
          //             blurRadius: 10,
          //             offset: Offset(0, 10),
          //           ),
          //         ],
          //       ),
          //       child: const Padding(
          //         padding: EdgeInsets.all(8.0),
          //         child: Text(
          //           'Make Payment',
          //           style: TextStyle(color: Colors.white, fontSize: 20),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        Center(
          child: ElevatedButton(onPressed: (){ controller.makePayment(amount: '10', currency: 'USD');
                print('hello');}, child: Text("Pament")),
        )
        ],
      ),
    );
  }
}
