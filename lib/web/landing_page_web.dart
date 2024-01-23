import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohsin_ali/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
  // abc
}

class _LandingPageWebState extends State<LandingPageWeb> {
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
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
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
                  urlLauncher("assets/twitter.svg",
                      'https://www.x.com/mohsinalirashid/'),
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
            //First Web Page
            Container(
              //56 is height of AppBar
              height: heightDevice - 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            //bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: SansBold("Hello I'm ", 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SansBold('Mohsin Ali', 45),
                      Sans('Flutter Developer', 25),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email_outlined),
                          SizedBox(
                            width: 15,
                          ),
                          Sans('markcode180@gmail.com', 15),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(
                            width: 15,
                          ),
                          Sans('+92 323 6393422', 15),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          SizedBox(
                            width: 15.0,
                          ),
                          Sans('Rawalakot,AJK', 15),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
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
                        backgroundImage: AssetImage('image_circle.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Second Web Page
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Container(
                height: heightDevice / 1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/web.jpg',
                      height: widthDevice / 1.9,
                    ),
                    Spacer(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  SizedBox(height: 40,),
                          SansBold('About Me', 35),
                          SizedBox(
                            height: 15,
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
                            spacing: 2.0,
                            runSpacing: 5.0,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.all(7),
                                child: Sans('Flutter', 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.all(7),
                                child: Sans('FireBase', 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.all(7),
                                child: Sans('Android', 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.all(7),
                                child: Sans('Windows', 15),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: EdgeInsets.all(7),
                                child: Sans('iOS', 15),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Third Web Page
            Container(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold('What I Do?', 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: 'assets/web.jpg',
                        text: 'Web Development',
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                      AnimatedCard(
                          imagePath: 'assets/app.png', text: 'App Development'),
                      AnimatedCard(
                        imagePath: 'assets/firebase.png',
                        text: 'Back-end Development',
                        reverse: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Forth Web Page
            Container(
              height: heightDevice,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold('Contact Me', 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextForm(
                              text: 'First Name',
                              containerWidth: 350.0,
                              hintText: 'Enter First Name'),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextForm(
                              text: 'Email',
                              containerWidth: 350.0,
                              hintText: 'abc@gmail.com '),
                        ],
                      ),
                      Column(
                        children: [
                          TextForm(
                              text: 'Last Name',
                              containerWidth: 350.0,
                              hintText: 'Enter Last Name'),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextForm(
                              text: 'Phone Number',
                              containerWidth: 350.0,
                              hintText: '+92 11 23456678'),
                        ],
                      ),
                    ],
                  ),
                  TextForm(
                    text: 'Message',
                    containerWidth: widthDevice / 1.55,
                    hintText: 'Please type your message here',
                    maxLines: 10,
                  ),
                  MaterialButton(
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.teal,
                      height: 60.0,
                      minWidth: 200.0,
                      child: SansBold("Submit", 20.0),
                      onPressed: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
