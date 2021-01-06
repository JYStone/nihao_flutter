import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'qubing',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('jinjingyuan@foxmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=127665095,1206639163&fm=26&gp=0.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1718408090,3818562894&fm=26&gp=0.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.blue[400].withOpacity(0.6),
                  BlendMode.srcOver,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'message',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'favourite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite_outline,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'setting',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22,
            ),
            // 关闭抽屉
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
