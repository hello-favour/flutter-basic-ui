import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton(
      {this.child,
      this.color,
      this.borderRadius: 4.0,
      this.height: 50.0,
      this.oppressed});
  final Widget? child;
  final Color? color;
  final double? borderRadius;
  final double? height;
  final VoidCallback? oppressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius!),
          ),
        ),
        onPressed: oppressed,
      ),
    );
  }
}
