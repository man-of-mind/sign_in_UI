import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: height * 0.4,
                child: SvgPicture.asset(
                  assertName,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Enterprise Team Collaboration',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Bring together your files, your tools, projects and people, including a new desktop and mobile application.',
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
                    Container(
                      height: height * 0.07,
                      width: width * 0.5,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.black, fontSize: height * 0.02),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                Container(
                  height: height * 0.07,
                  width: width * 0.5,
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    'Sign in',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: height * 0.02),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
