import 'package:basic_portfolio/Constants/color_constants.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.name,
      required this.year,
      required this.imgloc});
  final String name;
  final String year;
  final String imgloc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: ColorConstants.greenBG,
          elevation: 4,
          child: Row(
            children: [
              const SizedBox(width: 20),
              SizedBox(width: 50, height: 50, child: Image.asset(imgloc)),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 25, 0, 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      child: RichText(
                        text: TextSpan(
                          text: name.substring(0, name.indexOf(':') + 1),
                          style: TextStyle(
                            fontFamily: 'Mohave',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: ColorConstants.textBlack,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: name.substring(
                                name.indexOf(':') + 1,
                              ),
                              style: TextStyle(
                                fontFamily: 'Mohave',
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: ColorConstants.greyWhiteBG,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      year,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                        color: ColorConstants.greyWhiteBG,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
