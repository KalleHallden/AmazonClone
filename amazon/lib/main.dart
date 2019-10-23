import 'package:amazon/UI/product_list.dart';
import 'package:amazon/UI/top_bar.dart';
import 'package:amazon/models/global.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              TopBar(),
              Container(
                height: MediaQuery.of(context).size.height - 168,
                child: ProductList(),
              )
            ],
          )


        )
    );
  }
}
