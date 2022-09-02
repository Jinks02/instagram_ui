import 'package:flutter/material.dart';

import '../utils/shop_grid_body.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Shop',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.doorbell_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: ShopGridBody(),
          ),
        ],
      ),
    );
  }
}
