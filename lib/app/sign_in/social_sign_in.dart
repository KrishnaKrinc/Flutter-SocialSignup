import 'package:flutter/material.dart';
import 'package:flutter_ui/common_widget/custom_elevated_button.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  assetName,
                  height: 30,
                  width: 30,
                ),
                Text(
                  text,
                  style: TextStyle(color:textColor, fontSize: 15.0),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset(
                    assetName,
                    height: 30,
                    width: 30,
                  ),
                )
              ],
            ),
          color: color,
          onPressed: onPressed,
        );
}
