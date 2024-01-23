import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohsin_ali/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
      body: ListView(
        children: [
          //Intro,First Section
          CircleAvatar(
            radius: 117.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 110.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/image_circle.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold('Hello I am', 15.0),
                    ),
                    SansBold('Mohsin Ali Rashid', 30.0),
                    Sans('Flutter Developer', 15.0),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans('markcode180@gmail.com', 15.0),
                        Sans('+92 323 6393422', 15.0),
                        Sans('Rawalakot,AJK', 15.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
          ),

          //About me, Second Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SansBold('About me?', 35.0),
                Sans('Hello I am Mohsin Ali specialized in flutter development',
                    15.0),
                Sans('I strive to ensure astounding performance with state of',
                    15.0),
                Sans('The art security for Android ,Mac, Linux,Web and Wndows',
                    15.0),
                SizedBox(
                  height: 10.0,
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
            height: 60.0,
          ),
          //What i Do? Third Section
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SansBold('What I Do?', 35.0),
              AnimatedCard(
                  imagePath: 'assets/webL.png', text: 'Web Development'),
              SizedBox(
                height: 35.0,
              ),
              AnimatedCard(
                imagePath: 'assets/app.png',
                text: 'App Development',
                fit: BoxFit.contain,
                reverse: true,
              ),
              SizedBox(
                height: 35.0,
              ),
              AnimatedCard(
                  imagePath: 'assets/firebase.png',
                  text: 'Back-end Development'),
              SizedBox(
                height: 35.0,
              ),
            ],
          ),

          //Forth Section
          Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              Sans('Contact me', 35.0),
              TextForm(
                  text: 'First name',
                  containerWidth: deviceWidth / 1.4,
                  hintText: 'Enter First Name'),
              TextForm(
                  text: 'Last name',
                  containerWidth: deviceWidth / 1.4,
                  hintText: 'Enter last Name'),
              TextForm(
                  text: 'Email',
                  containerWidth: deviceWidth / 1.4,
                  hintText: 'Enter Email'),
              TextForm(
                  text: 'Phone No',
                  containerWidth: deviceWidth / 1.4,
                  hintText: 'Enter Phone No'),
              TextForm(
                text: 'Message',
                containerWidth: deviceWidth / 1.4,
                hintText: 'Enter Your Message here...',
                maxLines: 10,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: deviceWidth / 2.2,
                color: Colors.tealAccent,
                child: SansBold("Submit", 20.0),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
