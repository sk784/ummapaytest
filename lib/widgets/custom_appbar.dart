import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends PreferredSize {
  final String title;
  final double height;

  CustomAppBar(
      this.title, {
        this.height = 100,
      });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: AppColors.PrimaryColor,
      alignment: Alignment.center,
      child: SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 5,
                      top: 5,
                      bottom: 5,
                      child: BackButton(
                          color:  AppColors.PrimaryAccentColor,
                        ),
                    ),
                    Center(
                      child: Text(
                        this.title,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: AppColors.PrimaryDarkColor
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      bottom: 5,
                      child:
                       IconButton(
                          iconSize: 30.0,
                           color: AppColors.PrimaryGreyColor,
                           icon: Icon(Icons.search),
                           onPressed: () => null,
                       ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}