import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_constants.dart';
import 'package:oneapp/config/oneapp_routes.dart';
import 'package:oneapp/screens/home/forgot_password_screen.dart';
import 'package:oneapp/screens/home/import_social_details.dart';
import 'package:oneapp/screens/home/login_screen.dart';
import 'package:oneapp/screens/home/otp_verify_screen.dart';
import 'package:oneapp/screens/home/register_screen.dart';
import 'package:oneapp/screens/home/set_fullname_screen.dart';
import 'package:oneapp/screens/home/set_profilpicbio_screen.dart';
import 'package:oneapp/screens/home/set_username_screen.dart';
import 'package:oneapp/screens/logged/find_friends_screen.dart';

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
          routeForgotPassword: (context) => const ForgotPasswordScreen(title: "Forgot Password"),
          routeSocialLogin: (context) =>
              const ImportSocialDetailsScreen(title: "WELCOME"),
          routeRegister: (context) => const RegisterScreen(title: "Register Now"),
          routeSetFullName: (context) => const SetFullNameScreen(title: "Let us know your full name."),
          routeSetUsername: (context) => const SetUsernameScreen(title: "Username tells a lot about you",),
          routeSetProfilePicBio: (context) => const SetProfilePicBioScreen(title: "Select a profile pic"),
          routeFindFriends: (context) => const FindFriendsScreen(title: "Find your friends!"),
        },
      ),
    );
  }
}
