import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oneapp/utils/oneapp_colors.dart';

class WidgetHelper {
  static Widget commonButton(
      {required Function onClick,
      required double buttonWidth,
      required String buttonText,
      required double fontSize}) {
    return SizedBox(
        width: buttonWidth,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [secondaryColor, secondaryColor])),
          child: TextButton(
            onPressed: () => onClick(),
            child: Text(
              buttonText,
              style: TextStyle(color: Colors.black, fontSize: fontSize),
            ),
          ),
        ));
  }

  static Widget commonIconButton(
      {required Function onClick,
      required double buttonWidth,
      required String buttonText,
      required IconData icon,
      required double width,
      required double fontSize}) {
    return SizedBox(
        width: buttonWidth,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [secondaryColor, secondaryColor])),
          child: TextButton(
            onPressed: () => onClick(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  icon,
                  color: Colors.black,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  buttonText,
                  style: TextStyle(color: Colors.black, fontSize: fontSize),
                ),
              ],
            ),
          ),
        ));
  }

  static Widget commonBackArrow({required Function onPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () => onPressed(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ))
      ],
    );
  }

  static Widget textFormField(
      {required String hinText, required TextInputType textInputType, required bool isObsecure, required double size}){
    return TextFormField(
      keyboardType: textInputType,
      obscureText: isObsecure,
      maxLength: 80,
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: const TextStyle(color: Colors.white60),
        enabledBorder: const UnderlineInputBorder(
            borderSide:
            BorderSide(color: Colors.white60)),
        border: const UnderlineInputBorder(
            borderSide:
            BorderSide(color: Colors.white60)),
        contentPadding: EdgeInsets.only(
            left: size * 0.02,
            right: size * 0.02),
      ),
    );
  }

}
