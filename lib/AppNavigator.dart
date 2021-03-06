import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'pages/Home/main.dart';
import 'pages/Init/main.dart';
import 'pages/screen.dart';
import 'pages/FriendlyChat/main.dart';
import 'pages/ShoesConcept/main.dart';
import 'pages/ShoesConceptOptimize/main.dart';
import 'pages/WordGenerator/main.dart';
import 'pages/AnimationDemo/main.dart';
import 'pages/Planets/main.dart';
import 'pages/SharedElement/Home.dart';
import 'pages/SharedElement/Transition.dart';
import 'Marcin/screens/Home/main.dart';
import 'Marcin/screens/ListView/main.dart';

class AppNavigator extends StatelessWidget {
  final ThemeData theme = defaultTargetPlatform == TargetPlatform.iOS
      ? new ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.grey[100],
          primaryColorBrightness: Brightness.light,
        )
      : new ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.orangeAccent[400],
        );

  @override
  Widget build(BuildContext context) {
    final RouteObserver<PageRoute> routeObserver =
        new RouteObserver<PageRoute>();

    return new MaterialApp(
      navigatorObservers: [routeObserver],
      home: new InitApp(context),
      routes: <String, WidgetBuilder>{
        '/init': (BuildContext context) => new InitApp(context),
        '/home': (BuildContext context) => new HomeScreen(),
        '/screen': (BuildContext context) => new Screen(),
        '/friendlyChat': (BuildContext context) => new FriendlyChat(),
        '/shoesConcept': (BuildContext context) => new ShoesConcept(),
        '/shoesConceptOptimize': (BuildContext context) =>
            new ShoesConceptOptimize(),
        '/wordGenerator': (BuildContext context) => new WordGenerator(),
        '/animationDemo': (BuildContext context) => new AnimationDemo(),
        '/planetsHome': (BuildContext context) => new PlanetHome(),
        '/sharedElementHome': (BuildContext context) => new SharedElementHome(),
        '/sharedElementTransition': (BuildContext context) =>
            new SharedElementTransition(routeObserver),
        '/marcinHome': (BuildContext context) => new MarcinHome(),
        '/marcinWeightTracker': (BuildContext context) => new WeightTracker(),
      },
      theme: theme,
    );
  }
}
