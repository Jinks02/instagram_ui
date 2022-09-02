import 'package:flutter/material.dart';

import '../utils/search_grid_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
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
      body: SearchGridBody(),
    );
  }
}
