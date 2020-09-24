import 'package:flutter/material.dart';
import 'package:flutter_app/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DateItem extends StatefulWidget {

  final String date;
  final bool isSelected;
  final VoidCallback onSelect;

  const DateItem({
    Key key,
    this.isSelected,
    this.onSelect,
    this.date,
  }) : super(key: key);

  @override
  _DateItemState createState() => _DateItemState();
}

class _DateItemState extends State<DateItem> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onSelect,
        child: Container(
          width: 42.0,
          margin: const EdgeInsets.only(right: 6.0),
          padding: const EdgeInsets.all(2.0),
          child: Text(widget.date,
                  style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color:  widget.isSelected ? AppColors.PrimaryAccentColor: AppColors.PrimaryGreyColor
                  ),
                )
          ),
          decoration: widget.isSelected
              ?
          BoxDecoration(border: Border.all(color: AppColors.PrimaryAccentColor),
              borderRadius: BorderRadius.circular(8.0))
              :
          BoxDecoration(),
        )
    );
  }
}