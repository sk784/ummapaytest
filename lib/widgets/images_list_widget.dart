import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/images.dart';
import 'package:flutter_app/widgets/divide_widget.dart';
import 'package:flutter_app/widgets/image_item.dart';
import '../colors.dart';

class ImagesListWidget extends StatefulWidget {


  @override
  _ImagesListWidgetState createState() => _ImagesListWidgetState();
}

class _ImagesListWidgetState extends State<ImagesListWidget> {

  final List<Images> images = List();

  @override
  void initState() {
    super.initState();
    setState(() {
      images.add(Images("Утром","assets/images/image_1.png"));
      images.add(Images("Вечером","assets/images/image_2.png"));
      images.add(Images("После молитвы","assets/images/image_3.png"));
      images.add(Images("Важные дуа.Часть 1","assets/images/image_4.png"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.PrimaryColor,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return DivideWidget();
          },
          itemCount: images.length,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ImageItem(
                image: images[index],
            );
          },
        ),
      ),
    );
  }
}