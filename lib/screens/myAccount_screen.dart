import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/circular_stories_widget.dart';
import 'package:instagram_ui/utils/my_account_tabs_reusable_grid.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        // profile pic
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: ReusableProfileColumn(
                        textNumber: '99',
                        textConnections: 'Posts',
                      ),
                    ),
                    const ReusableProfileColumn(
                      textNumber: '200',
                      textConnections: 'Followers',
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: ReusableProfileColumn(
                        textNumber: '150',
                        textConnections: 'Following',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'John Smith',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                          'If I was a writer, I\'d have a better Instagram bio quote.'),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              width: MediaQuery.of(context).size.width * 0.74,
                              height: 35,
                              child: Center(child: Text('Edit Profile')),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.grey[400] ?? Colors.grey),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Icon(Icons.person_add_outlined),
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.grey[400] ?? Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: const <Widget>[
                    CircularStoriesWidget(nameText: 'Story'),
                    CircularStoriesWidget(nameText: 'Story'),
                    CircularStoriesWidget(nameText: 'Story'),
                    CircularStoriesWidget(nameText: 'Story'),
                    CircularStoriesWidget(nameText: 'Story'),
                  ],
                ),
                const TabBar(
                  tabs: <Tab>[
                    Tab(
                      icon: Icon(
                        Icons.grid_on,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person_pin_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      MyAccountTabsReusableGrid(
                          gridColor: Colors.red[100] ?? Colors.red),
                      MyAccountTabsReusableGrid(
                        gridColor: Colors.green[100] ?? Colors.green,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableProfileColumn extends StatelessWidget {
  const ReusableProfileColumn({
    Key? key,
    required this.textNumber,
    required this.textConnections,
  }) : super(key: key);

  final String textNumber;
  final String textConnections;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          textNumber,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
        ),
        Text(
          textConnections,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
