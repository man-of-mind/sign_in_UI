import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'sign_up_screen.dart';
import 'utilities.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String assertName = 'images/undraw_project_team_lc5a.svg';
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: SizedBox(
                height: height * 0.5,
                child: SvgPicture.asset(
                  assertName,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Text(
                'Enterprise Team Collaboration',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Text(
                'Bring together your files, your tools, projects and people, including a  new desktop and mobile application.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
            ),
            Spacer(),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: getButton(
                        height: height,
                        width: width,
                        buttonColor: Colors.grey,
                        text: 'Sign in',
                      ),
                    ),
                  ],
                ),
                getButton(
                    height: height,
                    width: width,
                    text: 'Register',
                    textColor: Colors.black,
                    buttonColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
