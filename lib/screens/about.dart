import 'package:flutter/material.dart';

import 'SizeConfig.dart';
import 'contact.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

final String aboutUs =
    "We are a 360-degree content factory, focused on creating captivating brand experiences that resonate with your target audience, deepen brand loyalty and increase the bottom-line. We have a diverse team of creative thinkers, cultural architects, design gurus, technologists, social engineers and content creators all focused on getting the right results. Every idea formed is infused with your brand's DNA, and there is truly no limit to how far we're willing to go in helping you tell your brand story.";

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              body: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/about.jpg'),
                          fit: BoxFit.cover)),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 100),
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 100,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 50),
                                  Text(
                                    'About Us',
                                    style: TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 3,
                                  ),
                                  Image.asset(
                                    'assets/divider.jpg',
                                    width: SizeConfig.blockSizeHorizontal * 50,
                                  ),
                                  SizedBox(
                                      height:
                                          SizeConfig.safeBlockVertical * 10),
                                  Image.asset('assets/group.jpg',
                                      width:
                                          SizeConfig.blockSizeHorizontal * 90),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Text("$aboutUs",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: "Source Code Pro",
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.w400,
                                      )),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 10,
                                  ),
                                  Text(
                                    'Meet Our Team',
                                    style: TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 3,
                                  ),
                                  Image.asset(
                                    'assets/divider.jpg',
                                    width: SizeConfig.blockSizeHorizontal * 50,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/1.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Ferdinard Adimefe',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Cheif Executive Officer',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.safeBlockVertical * 5,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/66.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Toju Kayode Olufeyimi',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Chief Operating Officer',
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/5.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Elohor Omonemu',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Head, HR & Operations',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.safeBlockVertical * 5,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/3.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Matthew Omo-Aigbanbee',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Bus. Dev Mrkt. Lead',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/2.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Chekwube Okonkwo',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Art Director',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.safeBlockVertical * 5,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/3.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Uchechukwu Ani',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Lead, Compliance & Legal',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/9.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Odunwo-Albert Oushola',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Tech Lead',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.safeBlockVertical * 5,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/3.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Nwankwo Joyce',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Bus. Dev. Executive',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/7.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Odunwo-Albert Oushola',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Content Lead',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.safeBlockVertical * 5,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/3.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Ebere Ashimole',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Finance Manager',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          children: <Widget>[
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/team/4.jpg'),
                                              radius: 50.0,
                                            ),
                                            Text(
                                              'Edet Peter',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              'Lead Graphics & Design',
                                              style: TextStyle(
                                                  color: Colors.grey[500],
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Center(
                                      child: Text(
                                    'Make Your Story With Us',
                                    style: TextStyle(
                                      fontSize: 32.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 2,
                                  ),
                                  Center(
                                      child: Text(
                                    'Join the talented group of artists & imagineers.',
                                    style: TextStyle(
                                        fontSize: 22.0, color: Colors.grey),
                                    textAlign: TextAlign.center,
                                  )),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 2,
                                  ),
                                  FlatButton(
                                    onPressed: () => {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  ContactPage()))
                                    },
                                    color: Colors.blue,
                                    padding: EdgeInsets.symmetric( horizontal: 32, vertical: 12,),
                                    child: Text(
                                      'Join Us',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))),
        );
  }
}
