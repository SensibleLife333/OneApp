import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_routes.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';
import 'package:oneapp/widgets/widget_helpers.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {

  _verifyOtp(){
    Navigator.of(context).pushNamed(routeSocialLogin);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.1, right: SizeConfig.screenWidth * 0.1),
                  child: Text(
                    "Check your message box - We have sent you a verification code!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.screenHeight * 0.02,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
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
                            const Text("Password"),
                            OTPTextField(

                              length: 5,
                              width: SizeConfig.screenWidth,
                              fieldWidth: 40,
                              fieldStyle: FieldStyle.underline,
                              otpFieldStyle: OtpFieldStyle(
                                borderColor: Colors.white,
                                focusBorderColor: Colors.white,
                                enabledBorderColor: Colors.white,
                              ),
                              obscureText: true,
                              onChanged: (String value){},
                              onCompleted: (String pin){},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.2,
            ),
            WidgetHelper.commonButton(onClick: _verifyOtp, buttonWidth: SizeConfig.screenWidth * 0.5, buttonText: "Next"),
          ],
        ),
      ),
    );
  }
}
