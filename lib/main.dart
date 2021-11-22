import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_constants.dart';
import 'package:oneapp/config/oneapp_routes.dart';
import 'package:oneapp/screens/home/import_social_details.dart';
import 'package:oneapp/screens/home/login_screen.dart';
import 'package:oneapp/screens/home/otp_verify_screen.dart';
import 'package:oneapp/screens/home/set_fullname_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.teal,
          textTheme: Theme.of(context).textTheme.apply(
              displayColor: Colors.white,
              bodyColor: Colors.white,
              fontFamily: "Lato"),
        ),
        initialRoute: routeHome,
        routes: {
          routeHome: (context) => const LoginPage(title: 'SIGN IN'),
          routeOtpVerify: (context) =>
              const OtpVerifyScreen(title: 'VERIFY OTP'),
          routeSocialLogin: (context) =>
              const ImportSocialDetailsScreen(title: "WELCOME"),
          routeSetFullName: (context) => const SetFullNameScreen(title: "Let us know your full name."),
        },
      ),
    );
  }
}
