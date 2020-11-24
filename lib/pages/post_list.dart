import 'package:flutter/material.dart';

import '../widgets/post_tile.dart';

List<String> sections = [
  "home", "arts", "automobiles", "books", "business", "fashion", "food", "health", "insider", "magazine", 
  "movies", "national", "nyregion", "obituaries", "opinion", "politics", "realestate", "science", "sports",
   "sundayreview", "technology", "theater", "tmagazine", "travel", "upshot", "world"
];

class PostListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostListPageState();
}

class _PostListPageState extends State {
  List<String> postList = ['Trump loses election', 'Coronavirus vaccine soon available'];
  String section = 'home';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The New York Times"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            _sectionsDropDown(),
            Expanded(
              child: _postListItems(),
            ),
          ],
        ),
      ),
    );
  }

  ListView _postListItems() {
    return ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, position) {
          return PostTile(
              title: postList[position],
              imageUrl: 'http://placehold.it/300x200?text=N/A',
              abstract: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              onTapped: () {
                //
              });
        });
  }

  DropdownButton _sectionsDropDown() {
    return DropdownButton<String>(
      isExpanded: true,
      items: sections.map((String section) {
        return DropdownMenuItem<String>(
          value: section,
          child: Text(
            section,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20),
          ),
        );
      }).toList(),
      value: section,
      onChanged: (value) {
        //
      },
    );
  }

}