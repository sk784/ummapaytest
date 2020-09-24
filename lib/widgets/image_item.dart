import 'package:flutter/material.dart';
import 'package:flutter_app/data/images.dart';
import 'package:flutter_app/ui/second_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class ImageItem extends StatelessWidget {

  final Images image;

  const ImageItem({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(12.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              image.path,
              fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.only(top:36.0, left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  image.title,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: Colors.white
                    ),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                GestureDetector(
                  onTap: image.title=="Утром"? () =>
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                    SecondPage()
                    )
                    ):null,
                  child: Text(
                    "Посмотреть >",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: AppColors.PrimaryAccentColor
                      ),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}