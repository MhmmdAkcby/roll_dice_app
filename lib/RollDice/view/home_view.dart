import 'package:flutter/material.dart';
import 'package:roll_dice_app/RollDice/product/color/project_color.dart';
import 'package:roll_dice_app/RollDice/product/widget/dice_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String name = 'Roll Dice';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _boxDecorationForBgColor(),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const DiceWidget(),
              Padding(
                padding: _WidgetPadding.textPadding,
                child: Text(name, style: textStyle(context)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecorationForBgColor() {
    return const BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [ProjectColor.purpuleColorV, ProjectColor.purpuleColor],
    ));
  }
}

TextStyle? textStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineMedium?.copyWith(color: ProjectColor.whiteColor);
}

class _WidgetPadding {
  static const EdgeInsets textPadding = EdgeInsets.only(top: 24);
}
