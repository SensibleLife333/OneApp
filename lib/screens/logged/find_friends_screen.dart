import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';
import 'package:oneapp/widgets/widget_helpers.dart';

class FindFriendsScreen extends StatefulWidget {
  const FindFriendsScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FindFriendsScreen> createState() => _FindFriendsScreenState();
}

class _FindFriendsScreenState extends State<FindFriendsScreen> {

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
        physics: const BouncingScrollPhysics(),
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
                      child: TextButton(onPressed: (){}, child: const Text("Skip", style: TextStyle(color: appTextColor),),),
                      alignment: Alignment.topRight,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: SizeConfig.screenWidth * 0.08, right: SizeConfig.screenWidth * 0.08),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [appTextColor, Colors.black12]),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.title, style: TextStyle(
                                fontSize: SizeConfig.screenHeight * 0.03
                              ),),
                              const Image(image: AssetImage("assets/images/search.png"), height: 30,)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.07,),
                    Container(
                      margin: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.05),
                      child: WidgetHelper.commonButton(
                          onClick: (){},
                          buttonWidth: SizeConfig.screenWidth * 0.5,
                          buttonText: "Next",
                          fontSize: SizeConfig.screenWidth * 0.05
                      ),
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
