import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WidgetHelper {
  static Widget commonButton(
      {required Function onClick,
      required double buttonWidth,
      required String buttonText}) {
    return SizedBox(
        width: buttonWidth,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.tealAccent, Colors.greenAccent])),
          child: TextButton(
            onPressed: () => onClick(),
            child: Text(
              buttonText,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ));
  }

  static Widget commonIconButton(
      {required Function onClick,
      required double buttonWidth,
      required String buttonText,
      required IconData icon,
      required double width}) {
    return SizedBox(
        width: buttonWidth,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.tealAccent, Colors.greenAccent])),
          child: TextButton(
            onPressed: () => onClick(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  icon,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  buttonText,
                  style: const TextStyle(color: Colors.black),
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
}
