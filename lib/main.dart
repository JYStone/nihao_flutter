import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/listView_demo.dart';
import './demo/bottomNavigationBarDemo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Home(), //NavigatorDemo(),
        // routes: {
        //   '/about': (BuildContext context) => PageDemo(title: 'About'),
        // },
        initialRoute: '/mdc',
        routes: {
          '/': (context) => NavigatorDemo(),
          '/about': (context) => PageDemo(title: 'About'),
          '/form': (context) => FormDemo(),
          '/mdc': (context) => MaterialComponentsDemo()
        },
        // 设置主题
        theme: ThemeData(
          // 主题色
          primarySwatch: Colors.purple,
          // 水波纹颜色
          splashColor: Colors.white70,
          // 高亮颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),

          accentColor: Color.fromRGBO(35, 100, 255, 1.0),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        // 设置导航栏
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('Navigation button is pressed.'),
          // ),
          title: Text("首页标题"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search button is pressed.')),
          ],
          // 设置导航栏下阴影 默认是4.0
          elevation: 4.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.white54,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: bottomNavigatinBarDemo(),
      ),
    );
  }
}
