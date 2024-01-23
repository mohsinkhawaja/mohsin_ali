import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/image_circle.png'),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold('Mohsin Ali', 20.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://www.instagram.com/mohsinalirashid/'),
                    );
                  },
                  icon: SvgPicture.asset(
                    'assets/instagram2.svg',
                    width: 25.0,
                    height: 25.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://www.x.com/mohsinalirashid/'),
                    );
                  },
                  icon: SvgPicture.asset(
                    'assets/twitter.svg',
                    width: 25.0,
                    height: 25.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://github.com/mohsinkhawaja/'),
                    );
                  },
                  icon: SvgPicture.asset(
                    'assets/github.svg',
                    width: 25.0,
                    height: 25.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 35.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold('Contact Me', 35.0),
              TextForm(
                  text: 'First Name',
                  containerWidth: widthDevice / 1.4,
                  hintText: 'Enter First Name'),
              TextForm(
                  text: 'Last Name',
                  containerWidth: widthDevice / 1.4,
                  hintText: 'Enter Last Name'),
              TextForm(
                  text: 'Phone No',
                  containerWidth: widthDevice / 1.4,
                  hintText: 'Enter Phone Number'),
              TextForm(
                  text: 'Email',
                  containerWidth: 350.0,
                  hintText: 'Enter Email'),
              TextForm(
                text: 'Message',
                containerWidth: widthDevice / 1.4,
                hintText: 'Enter your message here...',
                maxLines: 10.0,
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.tealAccent,
                elevation: 20.0,
                height: 60.0,
                minWidth: widthDevice / 2.2,
                child: SansBold('Submit', 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
