import 'dart:ui';

import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              onSelectAll: (bool value) {},
              columns: [
                DataColumn(
                    label: Text('Title'),
                    onSort: (int index, bool ascending) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;

                        posts.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length.compareTo(b.title.length);
                        });
                      });
                    }),
                DataColumn(
                  label: Text('Author'),
                ),
                DataColumn(
                  label: Text('Image'),
                ),
              ],
              rows: posts.map((e) {
                return DataRow(
                  selected: e.selected,
                  onSelectChanged: (bool value) {
                    setState(() {
                      if (e.selected != value) {
                        e.selected = value;
                      }
                    });
                  },
                  cells: [
                    DataCell(Text(e.title)),
                    DataCell(Text(e.author)),
                    DataCell(Image.network(e.imageUrl)),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
