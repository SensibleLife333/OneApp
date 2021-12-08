import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_constants.dart';
import 'package:oneapp/config/oneapp_routes.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';
import 'package:oneapp/widgets/widget_helpers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final List<String> _countryCodes = countryCodes;

  _sendOtp(){
    //Navigator.of(context).pushNamed(routeOtpVerify);
  }

  _forgotPassword(){
    Navigator.of(context).pushNamed(routeForgotPassword);
  }

  _registration(){
    Navigator.of(context).pushNamed(routeRegister);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60.0,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ONE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.screenHeight * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "APP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.screenHeight * 0.05,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenHeight * 0.03,
                        right: SizeConfig.screenHeight * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WidgetHelper.textFormField(hinText: "E-mail or Username", textInputType: TextInputType.emailAddress, isObsecure: false, size: SizeConfig.screenWidth),
                              WidgetHelper.textFormField(hinText: "Password", textInputType: TextInputType.text, isObsecure: true, size: SizeConfig.screenWidth),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              WidgetHelper.commonButton(onClick: _sendOtp, buttonWidth: SizeConfig.screenWidth * 0.5, buttonText: 'Login', fontSize: SizeConfig.screenWidth * 0.045),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              GestureDetector(
                onTap: () => _forgotPassword(),
                child: const Text("Forgot Your Password?", style: TextStyle(
                  color: Colors.greenAccent
                ),),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have the account?"),
                  GestureDetector(
                    onTap: _registration,
                    child: const Text(" Register Now", style: TextStyle(
                        color: Colors.greenAccent
                    ),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
