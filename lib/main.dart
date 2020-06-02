import 'package:flutter/material.dart';
import 'package:imaginarium_app/screens/about.dart';
import 'package:imaginarium_app/screens/contact.dart';
import 'package:imaginarium_app/screens/home.dart';
import 'package:imaginarium_app/screens/portfolio.dart';
import 'package:imaginarium_app/screens/services.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => BackgroundVideo(),
      '/about': (context) => AboutScreen(),
      '/services': (context) => ServicesPage(),
      '/portfolio': (context) => PortfolioPage(),
      '/contact': (context) => ContactPage(),

    }));
