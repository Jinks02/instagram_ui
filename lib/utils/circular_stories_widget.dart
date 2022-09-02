import 'package:flutter/material.dart';

class CircularStoriesWidget extends StatelessWidget {
  const CircularStoriesWidget({Key? key, required this.nameText})
      : super(key: key);

  final String nameText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            // insta stories
            width: 60,
            height: 60,
            decoration:
                const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(nameText),
          ),
        ],
      ),
    );
  }
}
