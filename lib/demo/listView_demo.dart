import 'package:flutter/material.dart';
import '../model/post.dart';


class ListViewDemo extends StatelessWidget {
  // 添加数据
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            // style: Theme.of(context).textTheme.title,
            style: TextStyle (
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            )
          ),
          Text(
            posts[index].author,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
            // style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }
}