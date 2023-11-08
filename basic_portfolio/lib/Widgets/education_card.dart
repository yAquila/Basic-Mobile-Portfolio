import 'package:basic_portfolio/Constants/color_constants.dart';
import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key, required this.degree, required this.year});
  final String degree;
  final String year;

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
              SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/images/graduationcap.png')),
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      degree,
                      style: TextStyle(
                        fontFamily: 'Mohave',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: ColorConstants.greyWhiteBG,
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
