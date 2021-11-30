import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oneapp/config/oneapp_routes.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';
import 'package:oneapp/widgets/widget_helpers.dart';

class ImportSocialDetailsScreen extends StatefulWidget {
  const ImportSocialDetailsScreen({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ImportSocialDetailsScreen> createState() =>
      _ImportSocialDetailsScreenState();
}

class _ImportSocialDetailsScreenState extends State<ImportSocialDetailsScreen> {
  _sendOtp() {
    print("Social clicked");
  }

  _setDetailsManually(){
    Navigator.of(context).pushNamed(routeSetFullName);
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
                Image.asset(
                  "assets/images/party_icon.png",
                  height: SizeConfig.screenHeight * 0.2,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.12,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.1,
                      right: SizeConfig.screenWidth * 0.1),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.screenHeight * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenHeight * 0.03,
                      right: SizeConfig.screenHeight * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TO",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.screenHeight * 0.04,
                              fontWeight: FontWeight.w300)),
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            "ONE",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.screenHeight * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "APP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenHeight * 0.04,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WidgetHelper.commonIconButton(
                    onClick: _sendOtp,
                    buttonWidth: SizeConfig.screenWidth * 0.5,
                    buttonText: "Import from Twitter",
                    width: SizeConfig.screenWidth,
                    icon: FontAwesomeIcons.twitter),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                WidgetHelper.commonIconButton(
                    onClick: _sendOtp,
                    buttonWidth: SizeConfig.screenWidth * 0.5,
                    buttonText: "Import from LinkedIn",
                    width: SizeConfig.screenWidth,
                    icon: FontAwesomeIcons.linkedinIn),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                WidgetHelper.commonIconButton(
                    onClick: _sendOtp,
                    buttonWidth: SizeConfig.screenWidth * 0.5,
                    buttonText: "Import from Instagram",
                    width: SizeConfig.screenWidth,
                    icon: FontAwesomeIcons.instagram),
                TextButton(
                    onPressed: _setDetailsManually,
                    child: const Text(
                      "I will enter my info manually",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
