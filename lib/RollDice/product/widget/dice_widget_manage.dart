import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/RollDice/product/constant/image_items.dart';

abstract class DiceWidgetMange<T extends StatefulWidget> extends State<T> {
  late int randomNumber;

  List<String> dicList() {
    return [
      ImagePath.imgPath.imgPath,
      ImagePath.imgPath2.imgPath,
      ImagePath.imgPath3.imgPath,
      ImagePath.imgPath4.imgPath,
      ImagePath.imgPath5.imgPath,
      ImagePath.imgPath6.imgPath,
    ];
  }

  int changeImage() {
    setState(() {
      randomNumber = Random().nextInt(6);
    });
    return randomNumber;
  }
}
