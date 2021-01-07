import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            // 设置容器比例
            aspectRatio: 19.0 / 9.0,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return IconBadge(Icons.pool);
    // row 横排 column竖排
    // return Column(
    //   children: <Widget>[IconBadge(Icons.pool)],
    // );

    return Container(
      child: Column(
        //spaceAround spaceEvenly start end center
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  // 设置子部件的位置
                  alignment: Alignment.topRight, //(1.0, 1.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              // 间隔32
              SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    // 添加一个镜像的渐变效果
                    // 形状设置为原型
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ],
                      // center:
                    ),
                  ),
                  child:
                      Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              ),
              Positioned(
                left: 20.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              ),
              Positioned(
                right: 200.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              ),
              Positioned(
                right: 20.0,
                top: 200.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              ),
            ],
          ),
          // IconBadge(Icons.pool),
          // IconBadge(Icons.beach_access, size: 64),
          // IconBadge(Icons.airline_seat_flat),
        ],
      ),
    );
  }
}
// 创建一个可以重复使用的图标徽章小部件

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
