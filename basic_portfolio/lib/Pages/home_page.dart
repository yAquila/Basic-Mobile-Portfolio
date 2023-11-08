import 'package:basic_portfolio/Constants/color_constants.dart';
import 'package:basic_portfolio/Widgets/education_card.dart';
import 'package:basic_portfolio/Widgets/project_card.dart';
import 'package:basic_portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String aboutParagraph =
      "Lorem ipsum dolor sit amet, consectetur ad gravida. Donec luctus id nisl eu mollis. Proin nec ullamcorper orci. Fusce ac libero vel leo porttitor elementum.Mauris id velit in est semper vestibulum. In hac habitasse platea dictumst. Nulla ligula est, egestas vitae nunc at, feugiat malesuada elit. Fusce eu ligula ut lacus suscipit tempor ut vitae tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit ligula quis dolor.";
  var appState;
  @override
  Widget build(BuildContext context) {
    appState = context.watch<MyAppState>();
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'M. Yusuf Kartal',
                style: TextStyle(
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: ColorConstants.blueWhite,
                ),
              ),
              Text(
                'Student & Developer',
                style: TextStyle(
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w200,
                  fontSize: 23,
                  color: ColorConstants.greyWhiteBG,
                ),
              ),
              Text(
                'TOBB ETU AI Engineering',
                style: TextStyle(
                  fontFamily: 'Mohave',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: ColorConstants.greyWhiteBG,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: ColorConstants.greyWhiteBG),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'About',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: ColorConstants.textBlack,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      aboutParagraph,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w200,
                        fontSize: 16,
                        color: ColorConstants.textBlack,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Education',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: ColorConstants.textBlack,
                      ),
                    ),
                  ),
                ),
                const EducationCard(
                  degree: 'TOBB ETU AIE',
                  year: '2027',
                ),
                const EducationCard(
                  degree: 'High School',
                  year: '2023',
                ),
                const EducationCard(
                  degree: 'Secondary School',
                  year: '2018',
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Skills',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: ColorConstants.textBlack,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 55,
                        height: 55,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: ColorConstants.blueWhite,
                          child: Image.asset('assets/images/python-logo.png'),
                        ),
                      ),
                      SizedBox(
                        width: 55,
                        height: 55,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: ColorConstants.blueWhite,
                          child: Image.asset('assets/images/flutter-logo.png'),
                        ),
                      ),
                      SizedBox(
                        width: 55,
                        height: 55,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: ColorConstants.blueWhite,
                          child: Image.asset('assets/images/java-logo.png'),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              appState.goToPages('SkillsPage');
                            });
                          },
                          child: Row(
                            children: [
                              Text(
                                'More',
                                style: TextStyle(
                                    color: ColorConstants.textBlack,
                                    fontFamily: 'Mohave',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: ColorConstants.textBlack,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Projects',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: ColorConstants.textBlack,
                      ),
                    ),
                  ),
                ),
                const ProjectCard(
                    name:
                        'BasicPortfolio: A portfolio comprising of my studies, skills and projects.',
                    year: '2023',
                    imgloc: 'assets/images/portfolio-icon.png'),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        appState.goToPages('ProjectsPage');
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'More Projects',
                          style: TextStyle(
                              color: ColorConstants.textBlack,
                              fontFamily: 'Mohave',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: ColorConstants.textBlack,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Contact',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: ColorConstants.textBlack,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(12),
                            icon:
                                Image.asset('assets/images/linkedin-logo.png')),
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(0),
                            icon: Image.asset(
                                'assets/images/instagram-logo.png')),
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/x-logo.png')),
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: IconButton(
                            onPressed: () {
                              _launchMailClient('yusufkartal2004@gmail.com');
                            },
                            padding: const EdgeInsets.all(10),
                            icon: Image.asset('assets/images/gmail-logo.png')),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _launchMailClient(String email) async {
    String mailUrl = 'mailto:$email';
    try {
      await UrlLauncher.launchUrl(Uri.parse(mailUrl));
    } catch (e) {
      print(e);
    }
  }
}
