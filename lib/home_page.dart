import 'package:flutter/material.dart';
import 'package:flutter_learning/boxes_widget.dart';
import 'package:flutter_learning/switch_controller.dart';

import 'custom_switch.dart';

class HomePage extends StatefulWidget {
  String appTitle;

  HomePage({required this.appTitle});

  @override
  State<HomePage> createState() {
    return HomePageState(title: appTitle);
  }
}

class HomePageState extends State<HomePage> {
  int _counter = 0;
  String title;
  Color _currentColorState = Colors.white;

  HomePageState({required this.title});

  void _updateIncrementCounter() {
    setState(() {
      _counter += 1;
    });

    _updateColorState();
  }

  void _resetCounter() {
    setState(() {
      this._counter = 1;
    });
    _updateColorState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body : $title'),
        actions: [CustomSwitch()],
      ),
      body: BoxesWidget(
        count: 10,
      ),
      floatingActionButton: getFloatActionButtonWidget(),
    );
  }

  Container getBodyWidget() {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: _resetCounter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contador ',
                style: TextStyle(fontSize: 32, color: _currentColorState),
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  FloatingActionButton getFloatActionButtonWidget() {
    return FloatingActionButton(
      child: Icon(Icons.plus_one),
      onPressed: _updateIncrementCounter,
    );
  }

  void _updateColorState() {
    if (this._counter % 2 == 0) {
      setState(() {
        this._currentColorState = Colors.red;
      });
    } else {
      setState(() {
        this._currentColorState = Colors.white;
      });
    }
  }
}
