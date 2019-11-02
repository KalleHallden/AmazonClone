import 'package:amazon/models/global.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  Drawer drawer = new Drawer();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      color: dark_blue,
      height: 70,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search, color: dark_blue)),
                    ),
                  ),
                  Icon(Icons.camera_alt, color: dark_blue)
                ],
              ))
        ],
      ),
    );
  }
}
