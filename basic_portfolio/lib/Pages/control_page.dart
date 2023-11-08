import 'package:basic_portfolio/Constants/color_constants.dart';
import 'package:basic_portfolio/Pages/home_page.dart';
import 'package:basic_portfolio/Pages/projects_page.dart';
import 'package:basic_portfolio/Pages/skills_page.dart';
import 'package:basic_portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = PageController(initialPage: 0);
  static const pageList = [
    HomePage(),
    SkillsPage(),
    ProjectsPage(),
  ];
  final pageListString = [
    'HomePage',
    'SkillsPage',
    'ProjectsPage',
  ];
  var pageView;
  var appState;
  @override
  Widget build(BuildContext context) {
    appState = context.watch<MyAppState>();

    pageView = PageView(
      onPageChanged: (index) {
        appState.changePageThroughSwiping(pageListString[index]);
      },
      controller: pageController,
      children: pageList,
    );
    if (pageView.controller.hasClients &&
        !appState.isPageChangedThroughSwiping) {
      pageView.controller
          .jumpToPage(pageListString.indexOf(appState.currentPage));
    }
    return Scaffold(
        // appBar: AppBar(backgroundColor: ColorConstants.greenBG),
        body: Container(color: ColorConstants.greenBG, child: pageView
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // const Expanded(
            //     //   flex: 1,
            //     //   child: TopBar(),
            //     // ),
            //     Expanded(flex: 10, child: page),
            //     // const Expanded(child: BottomBar()),
            //   ],
            // ),
            ));
  }
}
