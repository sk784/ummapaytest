import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/date_item.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class ScheduleWidget extends StatefulWidget {


  @override
  _ScheduleWidgetState createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {

  final List<String> dates = List();
  int _currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      dates.add("07:12");
      dates.add("12:43");
      dates.add("15:29");
      dates.add("18:11");
      dates.add("19:53");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          color: AppColors.PrimaryColor,
          height: 52.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                iconSize: 28.0,
                color: AppColors.PrimaryAccentColor,
                icon: Icon(Icons.location_on),
                onPressed: () => null,
              ),
              Text(
                "Москва",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: AppColors.PrimaryAccentColor
                  ),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                height: 24.0,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dates.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return DateItem(
                        date: dates[index],
                        isSelected: _currentSelectedIndex == index,
                        onSelect: () {
                          setState(() {
                            _currentSelectedIndex = index;
                          });
                        }
                    );
                  },
                ),
              ),
              IconButton(
                iconSize: 28.0,
                color: AppColors.PrimaryAccentColor,
                icon: Icon(Icons.notifications_none),
                onPressed: () => null,
              ),
            ]
      ),
        ),
    );
  }
}