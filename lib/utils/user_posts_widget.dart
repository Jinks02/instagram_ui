import 'package:flutter/material.dart';

class UserPostsWidget extends StatelessWidget {
  const UserPostsWidget({Key? key, required this.userName}) : super(key: key);

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // profile image and name
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[400], shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        userName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            color: Colors.grey[400],
          ),

          // stuff below the posts
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Icon(Icons.favorite_outline),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.chat_bubble_outline),
                    ),
                    Icon(Icons.send),
                  ],
                ),
                Icon(Icons.bookmark),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const <Widget>[
                Text('Liked by '),
                Text(
                  'Peter ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('and '),
                Text(
                  '43 others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
