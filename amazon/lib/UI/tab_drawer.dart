
import 'package:amazon/models/global.dart';
import 'package:flutter/material.dart';

class DrawerTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            padding: EdgeInsets.only(top: 50, left: 10),
            constraints: BoxConstraints.expand(height: 80),
            child: Text("Hello. Sign In", style: whiteItallictTitleStyle),
            color: dark_blue,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  child: Text("Home"),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
                FlatButton(
                  child: Text("Your Orders"),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
                FlatButton(
                  child: Text("Your Lists"),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
                FlatButton(
                  child: Text("Your Account"),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
                FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Shop by Department"),
                      Icon(Icons.arrow_forward_ios, size: 14,)
                    ],
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
              ],
            ),
          ),
          Divider(thickness: 2,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text("Settings"),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 20,
                              child: Image(image: AssetImage("lib/assets/murica.png")),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 14,)
                    ],
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
                FlatButton(
                  child: Text("Customer Service"),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
              ]
            ),
          ),
        ]
      )
    );
  }
}