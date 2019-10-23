import 'package:amazon/models/global.dart';
import 'package:amazon/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final List<Product> products;
  final String title;
  ProductCard({this.products, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.only(
        top: 5,
      ),
      height: 357,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text(title, style: productTitleStyle),
            Container()
          ],), 
          Divider(thickness: 0.5,), 
          getProductCardBody(), 
          Divider(thickness: 0.5,),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 20,
            child: FlatButton(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("See all deals", style: buttonStyleblue,),
                    Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 15,)
                  ],
                ),
              ),
              onPressed: () {

              },
            ),
          )],
      ),
      )
    );
  }

  Widget getProductCardBody() {
    int i = 0;
    List<Widget> rows = [];
    List<Widget> columns = [];
    for (Product product in products) {
      if (i > 2) {
        i = 0;
        columns.add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: rows,
        ));
        rows = [];
      }
      rows.add(Container(
        height: getImageHeight(products.length),
        child: Image(
          image: product.image,
        ),
      ));
      i++;
    }
    if (rows.length > 0) {
      if (products.length == 3) {
        List<Row> new_rows = [];
        int i = 0;
        for (Container row in rows) {
          print(products[i].name);
          new_rows.add(Row(children: <Widget>[
            row,
            Container(
              margin: EdgeInsets.only(left: 15),
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("\$", style: TextStyle(fontSize: 10),),
                          Text("", style: TextStyle(fontSize: 5))
                        ],
                      ),
                      Text(products[i].price.toString(), style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Text(products[i].name),
                ],
              ),
            )
          ],));
          i++;
        }
        columns = new_rows;
      } else {
      columns.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rows,
      ));
      }
    }
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: columns,
      ),
    ));
  }

  double getImageHeight(int amount) {
    if (amount < 2) {
      return 250;
    }
    else {
      return 80;
    }
  }
}
