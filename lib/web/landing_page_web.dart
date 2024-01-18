import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohsin_ali/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
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
                "Home",
              ),
              Spacer(),
              TabsWeb(
                "Work",
              ),
              Spacer(),
              TabsWeb(
                "Blog",
              ),
              Spacer(),
              TabsWeb(
                "About",
              ),
              Spacer(),
              TabsWeb(
                "Contact",
              ),
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
                            width: 15,
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
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Container(
                height: heightDevice / 1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/web.jpg',
                      height: heightDevice / 1.7,
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
                              15),
                          Sans(
                              'I strive to ensure astounding performance with state of',
                              15),
                          Sans(
                              'The art security for Android ,Mac, Linux,Web and Wndows',
                              15),
                          SizedBox(
                            height: 15,
                          ),
                          Wrap(
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
                                child: Sans('iOX', 15),
                              ),
                              SizedBox(
                                width: 10,
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
                      Card(
                        elevation: 30.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/webL.png',
                                height: 200,
                                width: 200,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SansBold('Web Development', 15),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 30.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/app.png',
                                height: 200,
                                width: 200,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SansBold('App Development', 15),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 30.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/firebase.png',
                                height: 200,
                                width: 200,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SansBold('Back-end Development', 15),
                            ],
                          ),
                        ),
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
                              heading: 'First Name',
                              width: 350,
                              hintText: 'Enter First Name'),
                          SizedBox(
                            height: 15,
                          ),
                          TextForm(
                              heading: 'Email',
                              width: 350,
                              hintText: 'abc@gmail.com '),
                        ],
                      ),
                      Column(
                        children: [
                          TextForm(
                              heading: 'Last Name',
                              width: 350,
                              hintText: 'Enter Last Name'),
                          SizedBox(
                            height: 15,
                          ),
                          TextForm(
                              heading: 'Phone Number',
                              width: 350,
                              hintText: '+92 11 23456678'),
                        ],
                      ),
                    ],
                  ),
                  TextForm(
                    heading: 'Message',
                    width: widthDevice / 1.55,
                    hintText: 'Please type your message here',
                    maxLines: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
