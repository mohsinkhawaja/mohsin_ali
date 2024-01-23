import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  urlLauncher(String imgpath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imgpath,
        width: 35.0,
        color: Colors.black,
      ),
      onPressed: () async {
        await launchUrl(
          Uri.parse(url),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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

    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/MohsinAli.jpeg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold('Mohsin Ali Rashid', 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher('assets/instagram2.svg',
                    'https://www.instagram.com/mohsinalirashid/'),
                urlLauncher(
                    "assets/twitter.svg", 'https://www.x.com/mohsinalirashid/'),
                urlLauncher(
                    "assets/github.svg", 'https://github.com/mohsinkhawaja'),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(
              title: "Home",
              route: '/',
            ),
            Spacer(),
            TabsWeb(
              title: "Work",
              route: '/work',
            ),
            Spacer(),
            TabsWeb(
              title: "Blog",
              route: '/blog',
            ),
            Spacer(),
            TabsWeb(
              title: "About",
              route: '/about',
            ),
            Spacer(),
            TabsWeb(title: 'Contact', route: '/contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 600.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        'Hello! I am Mohsin Ali I specialize in flutter development ',
                        15.0),
                    Sans(
                        "I strive to ensure the astounding performance with state of",
                        15.0),
                    Sans("the art security for Android, Linux, Web iOS and Mac",
                        15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        tealContainer("Flutter"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("FireBase"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Android"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Windows"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("IOS"),
                        SizedBox(
                          width: 7.0,
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/image_circle.png',
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),

                //web development second section
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: 'assets/webL.png',
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Web Development", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "I am here to build your presence online with state of the art web apps",
                        15.0),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),

          //Third Section, App Development
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("App Develpoment", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Do you need a high performance ,reponsive and beautiful app?Don't worry, I have got you covered.",
                        15.0),
                  ],
                ),
              ),
              AnimatedCard(
                imagePath: 'assets/app.png',
                height: 250.0,
                width: 250.0,
                reverse: true,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),

          //Backend development

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: 'assets/firebase.png',
                width: 250.0,
                height: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Backend Development", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Do you want your backend highly scalable and secure?Let's have a conversation on how i can help you with that.",
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
