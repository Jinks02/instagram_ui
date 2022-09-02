import 'package:flutter/material.dart';

class MyAccountTabsReusableGrid extends StatelessWidget {
  const MyAccountTabsReusableGrid({Key? key, required this.gridColor})
      : super(key: key);

  final Color gridColor;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 7,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: gridColor,
            ),
          );
        });
  }
}
