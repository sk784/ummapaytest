import 'package:flutter/material.dart';

import '../colors.dart';

class DivideWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1.0,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: AppColors.PrimaryDivideColor
    );
  }
}