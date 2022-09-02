import 'package:flutter/material.dart';

class ShopGridBody extends StatelessWidget {
  const ShopGridBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              color: Colors.purple[100],
            ),
          );
        });
  }
}
