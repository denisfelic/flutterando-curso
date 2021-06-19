import 'package:flutter/material.dart';
import 'package:flutter_learning/switch_controller.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  CustomSwitchState createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: SwitchController.instance.switchState,
        onChanged: (value) {
          SwitchController.instance.changeTheme();
        });
  }
}
