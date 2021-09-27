import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_ui/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    String? assetName,
    String? text,
    Color? color,
    Color? textcolor,
    VoidCallback? onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset("assetName"),
              Text(
                text!,
                style: TextStyle(color: textcolor, fontSize: 15.0),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset("assetName"),
              ),
            ],
          ),
          color: color,
          height: 40.0,
          oppressed: onPressed,
        );
}
