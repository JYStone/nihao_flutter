import 'package:flutter/material.dart';
import 'model/post.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      // 设置主题
      theme: ThemeData (
        primarySwatch: Colors.yellow
      )
    );
  }
}

class Home extends StatelessWidget {
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
              color: Colors.black12,
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
    return Scaffold(
      backgroundColor: Colors.grey[100],
        // 设置导航栏
        appBar: AppBar(
          title: Text("首页标题"),
          // 设置导航栏下阴影 默认是4.0
          elevation: 4.0,
        ),
        body: ListView.builder(
          itemBuilder: _listItemBuilder,
          itemCount: posts.length,
        )
      );
  }
}
// 定义一个小部件
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello word',
        textDirection: TextDirection.ltr,
        style: TextStyle (
          fontSize: 40, 
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        )
      ),
    );
  }
}