import 'package:flutter/material.dart';
import 'package:flutter_learning/switch_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: SwitchController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(brightness: getThemeColor()),
            title: "Aplicativo $title",
            home: HomePage(appTitle: title),
          );
        });
  }

  Brightness getThemeColor() {
    return (SwitchController.instance.switchState == true)
        ? Brightness.dark
        : Brightness.light;
  }
}
