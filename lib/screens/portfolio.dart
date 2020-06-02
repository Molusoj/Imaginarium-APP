import 'package:flutter/material.dart';
import 'package:imaginarium_app/utility.dart';
import './SizeConfig.dart';

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
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
                        image: AssetImage('assets/portfolio.jpg'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: Center(
                        child: Column(children: <Widget>[
                  SizedBox(height: 100),
                  Container(
                      width: SizeConfig.blockSizeHorizontal * 100,
                      color: Colors.white,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(children: <Widget>[
                            SizedBox(height: 50),
                            Text(
                              'Our Latest Works',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 3,
                            ),
                            Image.asset(
                              'assets/divider.jpg',
                              width: SizeConfig.blockSizeHorizontal * 50,
                            ),
                            SizedBox(height: SizeConfig.safeBlockVertical * 10),
                            Image.asset('assets/projects/airteltv.jpg',
                                width: SizeConfig.blockSizeHorizontal * 90),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 5,
                            ),
                            Text(
                              'Airtel Nigeria',
                              style: smallBoldStyle,
                            ),
                            Text(
                              "Platform Managemnet, Content Curation",
                              style: lightStyle,
                            ),
                            SizedBox(height: SizeConfig.safeBlockVertical * 10),
                            Image.asset('assets/projects/zenith.jpg',
                                width: SizeConfig.blockSizeHorizontal * 90),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 5,
                            ),
                            Text(
                              'ZENITH BANK',
                              style: smallBoldStyle,
                            ),
                            Text(
                              "Animation, Media Promotion & Strategy",
                              style: lightStyle,
                            ),
                            SizedBox(height: SizeConfig.safeBlockVertical * 10),
                            Image.asset('assets/projects/hto.jpg',
                                width: SizeConfig.blockSizeHorizontal * 90),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 5,
                            ),
                            Text(
                              'HELP TO OWN',
                              style: smallBoldStyle,
                            ),
                            Text(
                              "Brand Identity, Web App",
                              style: lightStyle,
                            ),
                            SizedBox(height: SizeConfig.safeBlockVertical * 10),
                            Image.asset('assets/projects/ilia.jpg',
                                width: SizeConfig.blockSizeHorizontal * 90),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 5,
                            ),
                            Text(
                              'MAGIC CARPET STUDIOS',
                              style: smallBoldStyle,
                            ),
                            Text(
                              "Branding & Production",
                              style: lightStyle,
                            ),
                            SizedBox(height: SizeConfig.safeBlockVertical * 10),
                            Text(
                              'Our Valuable Clients',
                              style: boldStyle,
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
                            _logos(),
                          ])))
                ]))))));
  }

  Widget _logos() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/logo/13.jpg",
              width: SizeConfig.screenWidth / 5,
            ),
            Image.asset("assets/logo/14.png",
                width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/1.png", width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/2.png", width: SizeConfig.screenWidth / 5),
          ],
        ),
        SizedBox(
          height: SizeConfig.safeBlockVertical * 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/logo/3.png", width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/4.png", width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/5.png", width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/6.png", width: SizeConfig.screenWidth / 5),
          ],
        ),
        SizedBox(
          height: SizeConfig.safeBlockVertical * 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/logo/7.png", width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/8.png", width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/9.png", width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/10.png",
                width: SizeConfig.screenWidth / 5),
          ],
        ),
        SizedBox(
          height: SizeConfig.safeBlockVertical * 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/logo/11.png",
                width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/12.png",
                width: SizeConfig.screenWidth / 5),
            Image.asset("assets/logo/15.jpg",
                width: SizeConfig.screenWidth / 5),
          ],
        ),
      ],
    );
  }
}
