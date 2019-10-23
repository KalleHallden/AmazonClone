import 'package:amazon/models/global.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      color: dark_blue,
      height: 168,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      width: 100,
                      child: Image(
                          image:
                              AssetImage('lib/assets/amazon-logo-white.png')),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.mic, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
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
