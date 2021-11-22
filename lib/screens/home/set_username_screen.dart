import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_routes.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';
import 'package:oneapp/widgets/widget_helpers.dart';

class SetUsernameScreen extends StatefulWidget {
  const SetUsernameScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SetUsernameScreen> createState() => _SetUsernameScreenState();
}

class _SetUsernameScreenState extends State<SetUsernameScreen> {
  _goToNextScreen() {
    Navigator.of(context).pushNamed(routeSetProfilePicBio);
  }

  _goBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
            child: Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.02, right: SizeConfig.screenWidth * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  WidgetHelper.commonBackArrow(onPressed: _goBack),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.alternate_email_rounded, color: Colors.white60,textDirection: TextDirection.ltr,),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white60)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white60))),
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.01,),
                        const Text("Choose the username wisely.", style: TextStyle(color: Colors.white60),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.05),
                child: WidgetHelper.commonButton(
                    onClick: _goToNextScreen,
                    buttonWidth: SizeConfig.screenWidth * 0.5,
                    buttonText: "Next"),
              )),
        ],
      ),
    );
  }
}
