import 'package:flutter/material.dart';
import 'package:flutter_app/data/azkar.dart';
import 'package:flutter_app/ui/second_page.dart';
import 'package:flutter_app/widgets/divide_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class AzkarItem extends StatelessWidget {

  final Azkar azkar;

  const AzkarItem({
    Key key,
    this.azkar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 55.0,
            padding: EdgeInsets.all(12.0),
            child: Text(
              azkar.title,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AppColors.PrimaryDarkColor
                ),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          DivideWidget(),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              azkar.arabian,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AppColors.PrimaryDarkColor
                ),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              azkar.translate,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AppColors.PrimaryDarkColor
                ),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              azkar.pronunciation,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: AppColors.PrimaryDarkColor
                ),
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic
              ),
            ),
          ),
        ],
      )
    );
  }
}