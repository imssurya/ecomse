import 'package:ecomse/single_prod.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "flutter logo",
      "old_price": 120,
      "price": 69,
    },
    {
      "name": "shirt",
      "picture": "flutter logo",
      "old_price": 700,
      "price": 499,
    },
    {
      "name": "pant",
      "picture": "flutter logo",
      "old_price": 900,
      "price": 699,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        SingleProd(
          prod_name: product_list[index]['name'],
          prod_picture: null,
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
      itemCount: product_list.length,
    );
  }
}
