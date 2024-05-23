import 'package:flutter/material.dart';
import 'package:roll_dice_app/RollDice/product/widget/dice_widget_manage.dart';

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends DiceWidgetMange<DiceWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Image.asset(
        dicList()[changeImage()],
      ),
    );
  }
}
