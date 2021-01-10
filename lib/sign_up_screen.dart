import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const pad = EdgeInsets.only(left: 20.0, top: 20.0);

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                    labelText: '  password'),
              ),
            ),
          ),
          Spacer(),
          _buildSignUpBtn(context),
          Container(
            height: height * 0.07,
            width: width * 0.5,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: height * 0.025, color: Colors.black),
            ),
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
