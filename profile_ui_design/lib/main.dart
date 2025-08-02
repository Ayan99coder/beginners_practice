import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<IconData> _icons = [
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.twitter,
    FontAwesomeIcons.github,
    FontAwesomeIcons.linkedin,
  ];
  final List<Color> _iconColors = [
    Color(0xFF1877F2), // Facebook Blue
    Color(0xFFE4405F), // Instagram Pink
    Color(0xFF1DA1F2), // Twitter Blue
    Color(0xFF333333), // GitHub Black
    Color(0xFF0077B5), // LinkedIn Blue
  ];
  final List<String> _iconLinks = [
    'https://www.facebook.com/share/19HgBb9gXq/?mibextid=wwXIfr',
    'https://www.instagram.com/seriously___ayan?igsh=MTd6em10dHF5M3puaw%3D%3D&utm_source=qr',
    'https://twitter.com/yourprofile',
    'https://github.com/Ayan99coder',
    'https://www.linkedin.com/in/ayan-javed-435033374?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app',
  ];
int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "images/Gojo.png",
                    height: size.height*0.35, // fixed height
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: -50,
                    child: CircleAvatar(

                      radius: 60,
                      backgroundImage: AssetImage("images/ayan.jpg",
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60), // extra space due to avatar overlap
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Ayan Javed\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: "Flutter Beginner/Learner",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black26,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center, // ✅ moved outside
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 80,
                width: size.width,// give height to ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _icons.length,
                  itemBuilder: (context, index) {
                    return  GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(_iconLinks[index]);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                            children: [
                              CircleAvatar(
                                radius: 33,
                             backgroundColor: Colors.white,
                                child: Icon(
                                  _icons[index],
                                  size: 45,
                                  color: _iconColors[index],
                                ),
                              ),
                            ],
                          ),
                      ),
                    );

                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "About :\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: "Hi! I'm Ayan Javed, a passionate Flutter beginner and aspiring mobile app developer. I enjoy learning how to build beautiful and functional user interfaces using Flutter. I'm currently focused on improving my UI design skills and exploring how different widgets work together to create amazing apps. My goal is to grow step by step, take on new challenges, and eventually build complete applications that people love to use.",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black54,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start, // ✅ moved outside
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
