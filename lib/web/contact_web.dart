import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mohsin_ali/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoolIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 700,
              iconTheme: IconThemeData(color: Colors.black, size: 25),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(
                    title: 'Home',
                    route: '/',
                  ),
                  Spacer(),
                  TabsWeb(
                    title: 'Work',
                    route: '/work',
                  ),
                  Spacer(),
                  TabsWeb(
                    title: 'Blog',
                    route: '/blog',
                  ),
                  Spacer(),
                  TabsWeb(
                    title: 'About',
                    route: '/about',
                  ),
                  Spacer(),
                  TabsWeb(
                    title: 'Contact',
                    route: '/contact',
                  ),
                  Spacer(),
                ],
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Sans('Contact Me', 40.0),
              SizedBox(
                height: 20.0,
              ),
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
                          hintText: 'Enter your Email'),
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
                          hintText: 'Enter your Phone Number')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              TextForm(
                text: 'Message',
                containerWidth: widthDevice / 1.57,
                hintText: 'Enter Your Message here...',
                maxLines: 10,
              ),
              SizedBox(
                height: 30.0,
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: 200.0,
                color: Colors.tealAccent,
                child: SansBold('Submit', 20.0),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
