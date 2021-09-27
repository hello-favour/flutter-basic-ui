import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/app_sign_in/sign_in_button.dart';
import 'package:flutter_basic_ui/common_widgets/custom_raised_button.dart';
import 'package:flutter_basic_ui/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Tracker"),
        elevation: 10.0,
      ),
      body: _buildcontent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildcontent() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "sign in",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 48.0),
          CustomRaisedButton(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("images/google-logo.png"),
                  Text("sign in with google"),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset("images/google-logo.png"),
                  ),
                ]),
            color: Colors.white,
            oppressed: () {},
          ),
          SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("images/facebook-logo.png"),
                  Text("sign in with facebook"),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset("images/facebook-logo.png"),
                  ),
                ]),
            color: Color(0XFF334D92),
            oppressed: () {},
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: "sign in with email",
            textcolor: Colors.black87,
            color: Colors.teal[700],
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          Text(
            "or",
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: "Go anonymous",
            textcolor: Colors.black,
            color: Colors.lime[300],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
