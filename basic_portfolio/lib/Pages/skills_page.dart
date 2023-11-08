import 'package:basic_portfolio/Constants/color_constants.dart';
import 'package:basic_portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  var iconList = [
    'python',
    'java',
    'flutter',
    'android',
    'dart',
    'cpp',
    'c',
  ];
  var appState;
  @override
  Widget build(BuildContext context) {
    appState = context.watch<MyAppState>();
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    appState.goToPages('MainPage');
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: ColorConstants.textBlack,
                ),
                Padding(
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
              ],
            ),
          ),
        ),
        Container(
          width: 500,
          height: 500,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorConstants.greyWhiteBG),
          child: Column(
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: GridView.count(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 15,
                  crossAxisCount: 3,
                  children: [
                    for (String iconName in iconList)
                      GridTile(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
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
                                  child: Image.asset(
                                      'assets/images/$iconName-logo.png'),
                                ),
                              ),
                              Text(
                                iconName[0].toUpperCase() +
                                    iconName.substring(1),
                                style: TextStyle(
                                  fontFamily: 'Mohave',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: ColorConstants.textBlack,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
