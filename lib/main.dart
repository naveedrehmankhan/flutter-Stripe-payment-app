import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:stripe_payment_integration/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51O18KyJnbCd10CAZaoSFEQylvkFB6gMGlLW9YnnfKMT8DpLPFnf4jfWTZNN2IsBSHcxugKYJIEaUONyKz2GDxETw006kV7DW4N'; // Replace with your publishable key
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    //fade in transition
    transitionDuration: const Duration(milliseconds: 500),
    defaultTransition: Transition.fadeIn,
    getPages: [
      GetPage(
        name: '/',
        page: () => const HomePage(),
      ),
    ],
  ));
}
