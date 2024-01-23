import 'dart:js';
import 'package:flutter/material.dart';
import 'package:mohsin_ali/mobile/about_mobile.dart';
import 'package:mohsin_ali/mobile/contact_mobile.dart';
import 'package:mohsin_ali/mobile/landing_page_mobile.dart';
import 'package:mohsin_ali/web/about_web.dart';
import 'package:mohsin_ali/web/contact_web.dart';
import 'package:mohsin_ali/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 800) {
                return ContactWeb();
              } else
                return ContactMobile();
            },
          ),
          settings: settings,
        );
      case '/about':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return AboutWeb();
              } else
                return AboutMobile();
            },
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
        );
    }
  }
}
