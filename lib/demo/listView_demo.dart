import 'package:flutter/material.dart';
import 'package:nihao_flutter/demo/post_show.dart';
import '../model/post.dart';
import './post_show.dart';

class ListViewDemo extends StatelessWidget {
  // 添加数据
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
              ),
              SizedBox(height: 16.0),
              Text(posts[index].title,
                  // style: Theme.of(context).textTheme.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  )),
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
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => PostShow(post: posts[index])),
                  );
                },
              ),
            ),
          ),
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
