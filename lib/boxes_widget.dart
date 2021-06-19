import 'package:flutter/material.dart';

class BoxesWidget extends StatelessWidget {
  const BoxesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.lightBlue[50],
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: getBoxes(5),
      ),
    );
  }

  List<Row> getBoxes(int count) {
    List<Row> rowList = [];
    for (var i = 0; i < count; i++) {
      rowList.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
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

    return rowList;
  }
}
