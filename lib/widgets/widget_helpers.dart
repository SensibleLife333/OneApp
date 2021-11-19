import 'package:flutter/material.dart';

class WidgetHelper {
  static Widget commonButton(
      {required Function onClick,
      required double buttonWidth,
      required String buttonText}) {
    return SizedBox(
        width: buttonWidth,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.tealAccent, Colors.greenAccent])),
          child: TextButton(
            onPressed: () => onClick(),
            child: Text(buttonText),
          ),
        ));
  }
}
