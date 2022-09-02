import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/circular_stories_widget.dart';
import 'package:instagram_ui/utils/user_posts_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List peopleNamesList = [
    'Jake',
    'Hailee',
    'Tom',
    'Robert',
    'Maria',
    'Natasha',
    'Chris',
    'Mark'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            // for displaying stories
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: peopleNamesList.length,
                itemBuilder: (context, index) {
                  return CircularStoriesWidget(
                      nameText: peopleNamesList[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: peopleNamesList.length,
              itemBuilder: (context, index) {
                return UserPostsWidget(userName: peopleNamesList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
