import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_in_ui/utilities.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 20.0),
                  child: Icon(
                    Icons.subdirectory_arrow_left_sharp,
                    color: Colors.white,
                    textDirection: TextDirection.rtl,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: pad,
            child: Text(
              'Let\'s Sign you in.',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: pad,
            child: Text(
              'Welcome back.',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Padding(
            padding: pad,
            child: Text(
              'You have been missed!',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (value) {},
                decoration:
                    InputDecoration(labelText: '  Phone, username or email'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (value) {},
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    ),
                    labelText: '  Password'),
              ),
            ),
          ),
          Spacer(),
          _buildSignUpBtn(context),
          getButton(
            height: height,
            text: 'Sign in',
            textColor: Colors.black,
            buttonColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpBtn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: FlatButton(
            onPressed: () {},
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.height / 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Register',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.height / 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
