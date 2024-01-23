import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 35.0,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2.0, color: Colors.black)),
                  child: Image.asset('assets/image_circle.png'),
                ),
              ),
            ),
            TabsMobile(text: 'Home', route: '/'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'Works', route: '/works'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'Blog', route: '/blog'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'About', route: '/about'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'Contact', route: '/contact'),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async => await launchUrl(
                    Uri.parse('https://www.instagram.com/mohsinalirashid/'),
                  ),
                  icon: SvgPicture.asset(
                    'assets/instagram2.svg',
                    width: 35.0,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                    Uri.parse('https://www.x.com/mohsinalirashid/'),
                  ),
                  icon: SvgPicture.asset(
                    'assets/twitter.svg',
                    width: 35.0,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                    Uri.parse('https://github.com/mohsinkhawaja'),
                  ),
                  icon: SvgPicture.asset(
                    'assets/github.svg',
                    width: 35.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/image_circle.png',
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            //Fiest Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SansBold('About me?', 35.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Sans(
                      'Hello I am Mohsin Ali specialized in flutter development',
                      15.0),
                  Sans(
                      'I strive to ensure astounding performance with state of',
                      15.0),
                  Sans(
                      'the art security for Android ,Mac, Linux,Web and Wndows',
                      15.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer('Flutter'),
                      tealContainer('FireBase'),
                      tealContainer('Android'),
                      tealContainer('Windows'),
                      tealContainer('iOS'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            // Web Development, Second Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(
                  imagePath: 'assets/webL.png',
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold("Web Development", 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                'I am here to built your presence online with state of the art, Web Apps',
                15.0),

            //App Development , third Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                AnimatedCard(
                  imagePath: 'assets/app.png',
                  width: 200.0,
                  reverse: true,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SansBold('App Development', 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                "Do you need a high performance ,responsive and beautiful app? Don't worry, I have got you covered.",
                15.0),

            //Backend development forth Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                AnimatedCard(
                  imagePath: 'assets/firebase.png',
                  width: 200.0,
                  reverse: true,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SansBold('Back-end Development', 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                "Do you need your backend highly scalable and secure?Let's have a conversation on how can i help you with that ",
                15.0),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    ));
  }
}
