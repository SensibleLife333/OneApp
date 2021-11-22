import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';
import 'package:oneapp/widgets/widget_helpers.dart';

class SetProfilePicBioScreen extends StatefulWidget {
  const SetProfilePicBioScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SetProfilePicBioScreen> createState() => _SetProfilePicBioScreenState();
}

class _SetProfilePicBioScreenState extends State<SetProfilePicBioScreen> {
  _sendOtp() {
    print("Receive OTP Clicked");
  }

  _goBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
              child: Padding(
                padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.02, right: SizeConfig.screenWidth * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: TextButton(onPressed: (){}, child: const Text("Skip", style: TextStyle(color: Colors.white60),),),
                      alignment: Alignment.topRight,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.1,
                              right: SizeConfig.screenWidth * 0.1),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.screenHeight * 0.027,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.1, right: SizeConfig.screenWidth * 0.1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: SizeConfig.screenHeight * 0.08,
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.01,),
                          Text("Your Bio", style: TextStyle(color: Colors.white70, fontSize: SizeConfig.screenHeight * 0.03),),
                          TextFormField(
                            maxLines: 5,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white60)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white60))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.2,),
                    Container(
                      margin: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.05),
                      child: WidgetHelper.commonButton(
                          onClick: _sendOtp,
                          buttonWidth: SizeConfig.screenWidth * 0.5,
                          buttonText: "Next"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
