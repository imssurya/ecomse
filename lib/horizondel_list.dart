import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_caption: "shirt",
          ),
          Category(
            image_caption: "dress",
          ),
          Category(
            image_caption: "formal",
          ),
          Category(
            image_caption: "informal",
          ),
          // Category(
          //   image_caption: "shoe",
          // ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: FlutterLogo(
                size: 100.0,
              ),
              subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    image_caption,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  )),
            ),
          )),
    );
  }
}
