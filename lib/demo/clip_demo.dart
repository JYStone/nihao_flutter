import 'package:flutter/material.dart';

class ClipDemo extends StatefulWidget {
  @override
  _ClipDemoState createState() => _ClipDemoState();
}

class _ClipDemoState extends State<ClipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon',
  ];

  List<String> _tags2 = [
    'Apple',
    'Banana',
    'Lemon',
  ];

  String _action = 'Nothing';

  List<String> _selected = [];
  String _choice = 'Lemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ClipDemo'),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                spacing: 12.0,
                // runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('life'),
                  ),
                  Chip(
                    label: Text('SunSet'),
                    backgroundColor: Colors.orange,
                  ),
                  Chip(
                    label: Text('SunSet'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Text('文'),
                    ),
                  ),
                  Chip(
                    label: Text('wanghao'),
                    avatar: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1694681277,1453280371&fm=26&gp=0.jpg'),
                    ),
                  ),
                  Chip(
                    label: Text('SunSet'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Text('文'),
                    ),
                  ),
                  Chip(
                    label: Text('wanghao'),
                    avatar: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1694681277,1453280371&fm=26&gp=0.jpg'),
                    ),
                  ),
                  Chip(
                    label: Text('City'),
                    onDeleted: () {},
                    deleteIcon: Icon(Icons.delete),
                    deleteIconColor: Colors.redAccent,
                    deleteButtonTooltipMessage: 'Remove this tag',
                  ),
                  // 分隔横线
                  Divider(
                    color: Colors.grey,
                    height: 32.0,
                    // indent: 32.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('ActionChip: $_action'),
                  ),
                  Wrap(
                    spacing: 8.0,
                    children: _tags.map(
                      (e) {
                        return ActionChip(
                          label: Text(e),
                          onPressed: () {
                            setState(() {
                              _action = e;
                            });
                          },
                        );
                      },
                    ).toList(),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 32.0,
                  ),
                  Wrap(
                    spacing: 8.0,
                    children: _tags2.map((e) {
                      return Chip(
                        label: Text(e),
                        onDeleted: () {
                          setState(() {
                            _tags2.remove(e);
                          });
                        },
                      );
                    }).toList(),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 32.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('FilterChip: $_selected'),
                  ),
                  Wrap(
                    spacing: 8.0,
                    children: _tags2.map((e) {
                      return FilterChip(
                        label: Text(e),
                        selected: _selected.contains(e),
                        onSelected: (value) {
                          setState(() {
                            if (_selected.contains(e)) {
                              _selected.remove(e);
                            } else {
                              _selected.add(e);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 32.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('ChoiceChip: $_choice'),
                  ),
                  Wrap(
                    spacing: 8.0,
                    children: _tags2.map((e) {
                      return ChoiceChip(
                        label: Text(e),
                        selectedColor: Colors.pink[100],
                        selected: _choice == e,
                        onSelected: (value) {
                          setState(() {
                            _choice = e;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () {
            setState(() {
              _tags2 = [
                'Apple',
                'Banana',
                'Lemon',
              ];
              _selected = [];
              _choice = 'Lemon';
            });
          },
        ));
  }
}
