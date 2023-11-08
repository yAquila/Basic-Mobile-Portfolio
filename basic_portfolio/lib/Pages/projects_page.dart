import 'package:basic_portfolio/Constants/color_constants.dart';
import 'package:basic_portfolio/Widgets/project_card.dart';
import 'package:basic_portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
          child: Expanded(
            child: Column(
              children: [
                ProjectCard(
                    name:
                        'BasicPortfolio: A portfolio comprising of my studies, skills and projects.',
                    year: '2023',
                    imgloc: 'assets/images/portfolio-icon.png'),
                ProjectCard(
                    name:
                        'Mind Plateau: A comprehensive platform for mind games education / practice.',
                    year: '2021-2022',
                    imgloc: 'assets/images/puzzle-icon.png'),
                ProjectCard(
                    name:
                        'Type Against: A mobile typing game with multiplayer and other fun game modes.',
                    year: '2020',
                    imgloc: 'assets/images/keyboard-icon.png'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
