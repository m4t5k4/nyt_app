import 'package:flutter/material.dart';

typedef void MyCallback();

class PostTile extends StatelessWidget {
  final String title, imageUrl, abstract;
  final MyCallback onTapped;

  PostTile({this.title, this.imageUrl, this.abstract, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapped();
      },
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              imageUrl,
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Container(
            height: 5,
          ),
          Text(
            abstract,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
          Container(
            height: 20,
          ),
        ],
      ),
    );
  }
}