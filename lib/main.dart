import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomse/horizondel_list.dart';
import 'package:ecomse/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random rnd = new Random();
  var random_color_list = ['yellow', 'black', 'red', 'orange', 'blue'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.red,
            title: Text('Ecomse'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          drawer: Drawer(
            child: ListView(
              //scrollDirection: Axis.vertical,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Suryaprakash'),
                  accountEmail: Text('imssurya@outlook.com'),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: FlutterLogo(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(Icons.home),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My account'),
                    leading: Icon(Icons.person),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Categories'),
                    leading: Icon(Icons.dashboard),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Favorites'),
                    leading: Icon(Icons.favorite),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.amber[400],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('About'),
                    leading: Icon(
                      Icons.help,
                      color: Colors.pink[400],
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: ListView(
            children: <Widget>[
              carouselItem(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              HorizontalList(),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 25, 0, 0),
                child: Text(
                  'Recent Products',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
              Products(),
            ],
          )),
    );
  }

  Widget carouselItem() {
    return CarouselSlider(
      items: [1, 2, 3, 4, 5].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text(
                    'text $i',
                    style: TextStyle(fontSize: 16.0),
                  ));
            },
          );
        },
      ).toList(),
      options: CarouselOptions(),
    );
  }
}
