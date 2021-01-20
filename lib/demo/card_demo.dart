import 'package:flutter/material.dart';
import '../model/post.dart';

class CasrDemo extends StatefulWidget {
  @override
  _CasrDemoState createState() => _CasrDemoState();
}

class _CasrDemoState extends State<CasrDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts
              .map((e) => Card(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                            child: Image.network(
                              e.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(e.imageUrl),
                          ),
                          title: Text(e.title),
                          subtitle: Text(e.author),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            e.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ButtonTheme(
                            child: ButtonBar(
                          children: [
                            FlatButton(
                              onPressed: () {},
                              child: Text('Like'.toUpperCase()),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text('Read'.toUpperCase()),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
