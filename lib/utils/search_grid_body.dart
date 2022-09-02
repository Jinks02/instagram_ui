import 'package:flutter/material.dart';

class SearchGridBody extends StatelessWidget {
  const SearchGridBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 19,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.blue[100],
            ),
          );
        });
  }
}
