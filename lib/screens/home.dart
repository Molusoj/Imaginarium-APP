import 'package:flutter/material.dart';
import 'package:imaginarium_app/screens/about.dart';
import 'package:imaginarium_app/screens/contact.dart';
import 'package:imaginarium_app/screens/portfolio.dart';
import 'package:imaginarium_app/screens/services.dart';
import '../presentation/custom_icons_list_icons.dart';
import './SizeConfig.dart';

class BackgroundVideo extends StatefulWidget {
  @override
  _BackgroundVideoState createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      home: SafeArea(
        child: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Container(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/logo3.png"),
                      width: 100.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'The Content Factory',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => AboutScreen()))
                            },
                            textColor: Colors.white,
                            color: Colors.white,
                            borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()=> {Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => PortfolioPage()))
                            },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                  'See Works >',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                                ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    image: AssetImage(
                      'assets/yt_bg2.jpg',
                    ),
                    fit: BoxFit.cover,
                  )),
              width: SizeConfig.blockSizeHorizontal * 100,
              height: SizeConfig.safeBlockVertical * 50,
            ),
            Container(
              child: Row(children: <Widget>[
                // Container 1
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => AboutScreen()));
                  },
                  child: Container(
                      width: SizeConfig.blockSizeHorizontal * 50,
                      height: SizeConfig.safeBlockVertical * 25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage('assets/about.jpg'),
                              fit: BoxFit.cover)),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            CustomIconsList.favorites,
                            color: Colors.white,
                            size: 32,
                          ),
                          SizedBox(height: 12),
                          Text(
                            'About Us',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )
                        ],
                      ))),
                ),

                // container 2
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ServicesPage()));
                  },
                                  child: Container(
                      width: SizeConfig.blockSizeHorizontal * 50,
                      height: SizeConfig.safeBlockVertical * 25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage('assets/service.jpg'),
                              fit: BoxFit.cover)),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            CustomIconsList.suitcase,
                            color: Colors.white,
                            size: 32,
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Services',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )
                        ],
                      ))),
                ),
              ]),
            ),
            GestureDetector(
              onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => PortfolioPage()));
                  },
                          child: Container(
                child: Row(children: <Widget>[
                  // Container 1
                  Container(
                      width: SizeConfig.blockSizeHorizontal * 50,
                      height: SizeConfig.safeBlockVertical * 25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage('assets/portfolio.jpg'),
                              fit: BoxFit.cover)),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            CustomIconsList.heart,
                            color: Colors.white,
                            size: 32,
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Portfolio',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )
                        ],
                      ))),

                  // container 2
                  GestureDetector(
                    onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ContactPage()));
                  },
                                      child: Container(
                        width: SizeConfig.blockSizeHorizontal * 50,
                        height: SizeConfig.safeBlockVertical * 25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage('assets/contact.jpg'),
                                fit: BoxFit.cover)),
                        child: Center(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              CustomIconsList.placeholder,
                              color: Colors.white,
                              size: 32,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Contact',
                              style: TextStyle(color: Colors.white, fontSize: 22),
                            )
                          ],
                        ))),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
