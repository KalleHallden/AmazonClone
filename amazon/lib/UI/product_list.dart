import 'package:amazon/UI/product_card.dart';
import 'package:amazon/models/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  Map titles;
  @override
  Widget build(BuildContext context) {
    titles = {
    0 : "Deal of the Day",
    1 : "Watches",
    2 : "Sunscreen",
    3 : "Clothing",
    4 : "Outdoor gear",
    5 : "Deal of the Day",
    6 : "Watches",
    7 : "Sunscreen",
    8 : "Clothing",
    9 : "Outdoor gear",
  };
    return ListView(
      padding: EdgeInsets.all(0),
      children: getProducts(),
    );
  }

  List<Widget> getProducts() {
    List<Widget> productList = [];
    bool hasBeenThree = true;
    for (int i = 0; i < 10; i++) {
      List<Product> products = [];
      if (i % 2 > 0) {
        if (hasBeenThree) {
          for (int j = 1; j < 10; j++) {
            products.add(createProduct("watch" + j.toString(), "watch", 10.0 * j));
          }
        } else {
          for (int j = 1; j < 4; j++) {
            products.add(createProduct("image" + j.toString(), "product", 10.0 * j));
          }
        }
        hasBeenThree = !hasBeenThree;
      } else {
        products.add(createProduct("image1", "new product!", 10.0));
      }
      productList.add(ProductCard(products: products, title: titles[i],));
    }
    return productList;
  }

  Product createProduct(String assetName, String productName, double price) {
    return Product(AssetImage("lib/assets/" + assetName + ".jpeg"), productName, price); 
  }
}