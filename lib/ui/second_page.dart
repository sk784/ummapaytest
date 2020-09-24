import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/azkars_list_widget.dart';
import 'package:flutter_app/widgets/custom_appbar.dart';
import 'package:flutter_app/widgets/divide_widget.dart';
import 'package:flutter_app/widgets/images_list_widget.dart';
import 'package:flutter_app/widgets/schedule_widget.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar("Азкары"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DivideWidget(),
              ScheduleWidget(),
              DivideWidget(),
              AzkarsListWidget()
            ],
          ),
        )
    );
  }
}