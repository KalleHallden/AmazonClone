import 'package:amazon/models/category.dart';
import 'package:amazon/models/global.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  CategoryCard({this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 5),
      height: 350,
      width: 100,
      color: Colors.white,
      child: Column(
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(category.title, style: productTitleStyle)
              ,
              Container()
            ],
          ),
          getImages()
        ]
      )
    );
  }

  Widget getImages() {
    if (category.images.length > 1) {
      List<Widget> rows = [];
      List<Widget> columns = [];
      int i = 0;
      for (AssetImage image in category.images) {
        if (i % 2 == 0) {
          columns.add(Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: rows
          ));
          rows = [];
        } 
        rows.add(Container(
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Container(height: 133,child: Image(image: image,),), Text(category.categories[i])],),
        ));
        i++;
      }
      if (rows.length > 0) {
        columns.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: rows
          ));
      }
      return Column(
        children: columns,
      );
    }
    else {
      return Container(
        height: 300,
        child: Image(image: category.images[0],),
      );
    }
  }
}