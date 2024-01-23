import 'package:flutter/material.dart';
import 'package:mohsin_ali/mobile/landing_page_mobile.dart';
import 'package:mohsin_ali/routes.dart';
import 'package:mohsin_ali/web/landing_page_web.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_strategy/url_strategy.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //layoutBuilder for responsive screens
      //constraints are basically used to set height and width
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',

      debugShowCheckedModeBanner: false,
    );
  }
}
