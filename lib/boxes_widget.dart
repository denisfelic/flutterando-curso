import 'package:flutter/material.dart';

class BoxesWidget extends StatelessWidget {
  final int count;

  const BoxesWidget({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // controlls the list height
      height: 145,
      color: Colors.red[100],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: fillBoxesList(count),
      ),
    );
  }

  List<Widget> fillBoxesList(int count) {
    List<Widget> boxesList = [];
    for (var i = 0; i < count; i++) {
      boxesList.add(this.getOneBox());
    }

    return boxesList;
  }

  Container getOneBox() {
    return Container(
      color: Colors.orange,
      margin: EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
            color: Colors.lightBlue,
          ),
          Text(
            'Bla bla bla',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
