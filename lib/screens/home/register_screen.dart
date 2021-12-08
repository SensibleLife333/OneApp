import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oneapp/config/oneapp_constants.dart';
import 'package:oneapp/config/oneapp_routes.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';
import 'package:oneapp/widgets/widget_helpers.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool _isChecked = false;

  _sendOtp(){
    Navigator.of(context).pushNamed(routeOtpVerify);
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
                height: SizeConfig.screenHeight * 0.06,
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
                              WidgetHelper.textFormField(hinText: "Name", textInputType: TextInputType.text, isObsecure: false, size: SizeConfig.screenWidth),
                              WidgetHelper.textFormField(hinText: "E-mail", textInputType: TextInputType.emailAddress, isObsecure: false, size: SizeConfig.screenWidth),
                              WidgetHelper.textFormField(hinText: "Password", textInputType: TextInputType.text, isObsecure: true, size: SizeConfig.screenWidth),
                              WidgetHelper.textFormField(hinText: "Confirm Password", textInputType: TextInputType.text, isObsecure: true, size: SizeConfig.screenWidth),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(value: _isChecked,
                                      checkColor: Colors.white,
                                      fillColor: MaterialStateProperty.resolveWith(getColor),
                                      onChanged: (bool? value){
                                        setState(() {
                                          _isChecked = value!;
                                        });
                                      }),
                                  const Text("I Accept the "),
                                  const Text("Terms & Conditions", style: TextStyle(
                                    color: Colors.greenAccent
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              WidgetHelper.commonButton(onClick: _sendOtp, buttonWidth: SizeConfig.screenWidth * 0.5, buttonText: 'Create New Account', fontSize: SizeConfig.screenWidth * 0.045),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(routeHome),
                    child: const Text("Login Now", style: TextStyle(
                        color: Colors.greenAccent
                    ),),
                  ),
                ],
              ),
              Text("Or", style: TextStyle(fontSize: SizeConfig.screenHeight * 0.02, color: Colors.white70),),
              const Text("Register With", style: TextStyle(color: Colors.white70),),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  socialIconButton(icon: FontAwesomeIcons.facebook, onPressed: (){}),
                  socialIconButton(icon: FontAwesomeIcons.linkedinIn, onPressed: (){}),
                  socialIconButton(icon: FontAwesomeIcons.google, onPressed: (){}),
                  socialIconButton(icon: FontAwesomeIcons.twitter, onPressed: (){}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialIconButton({required IconData icon, required Function onPressed}){
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: Icon(icon, color: Colors.black87),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: Colors.greenAccent, // <-- Button color
        onPrimary: Colors.green, // <-- Splash color
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.greenAccent;
    }
    return Colors.greenAccent;
  }
}
