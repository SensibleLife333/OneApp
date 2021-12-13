import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oneapp/config/oneapp_routes.dart';
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
  final ImagePicker _picker = ImagePicker();
  String _selectedImageFile="";

  _sendOtp() {
    print("Receive OTP Clicked");
  }

  _gotoFindFriends(){
    Navigator.of(context).pushNamed(routeFindFriends);
  }

  _selectImage() async{
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if( image != null ){
      setState(() {
        _selectedImageFile = image.path;
      });
    }
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
                      child: TextButton(onPressed: () => _gotoFindFriends(), child: const Text("Skip", style: TextStyle(color: appTextColor),),),
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
                          GestureDetector(
                            onTap: () => _selectImage(),
                            child: CircleAvatar(
                              radius: SizeConfig.screenHeight * 0.08,
                              backgroundColor: secondaryColor,
                              backgroundImage: _selectedImageFile.isNotEmpty ? FileImage(File(_selectedImageFile)) : null,
                              child: _selectedImageFile.isEmpty ? Text("+", style: TextStyle(fontSize: SizeConfig.screenHeight * 0.07, fontWeight: FontWeight.w300, color: Colors.black),) : const SizedBox.shrink(),
                            ),
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.04,),
                          Text("Your Bio", style: TextStyle(color: Colors.white70, fontSize: SizeConfig.screenHeight * 0.03),),
                          SizedBox(height: SizeConfig.screenHeight * 0.08,),
                          TextFormField(
                              maxLines: 5,
                              keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                                fillColor: appTextColor,
                                hintStyle: TextStyle(color: appTextColor, ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: appTextColor),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                          ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.07,),
                    Container(
                      margin: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.05),
                      child: WidgetHelper.commonButton(
                          onClick: _gotoFindFriends,
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
