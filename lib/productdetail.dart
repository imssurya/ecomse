import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_old_price;
  final product_detail_new_price;
  final producr_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_old_price,
      this.product_detail_new_price,
      this.producr_picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(color: Colors.white, child: FlutterLogo()),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the Size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close"),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the Color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close"),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the Quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close"),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    onPressed: () {},
                    child: Text('Buy Now')),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
            ],
          ),
          Divider(
            color: Colors.red,
          ),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text("Product Details etc"),
          ),
          Divider(
            color: Colors.red,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Nike"),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("New"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
