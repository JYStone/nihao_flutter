import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      // 背景图像
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3791918726,2864900975&fm=26&gp=0.jpg'),
          // image: AssetImage(assetName)
          alignment: Alignment.topCenter, //保持原有比例覆盖

          // repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          // 滤镜 设置滤镜的颜色和混合模式
          colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5), BlendMode.darken),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            // padding: EdgeInsets.only(left: 24.0, right: 8.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // 边框
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              // ),
              // 圆角
              // borderRadius: BorderRadius.circular(16.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(64),
              // ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 26.0, //模糊程度
                  spreadRadius: -6.0, //阴影扩散程度
                ),
              ],
              shape: BoxShape.circle, //和borderRadius 不能同时使用
              gradient: LinearGradient(
                //RadialGradient,LinearGradient
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'ninhao',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》-- $_author. 君不见黄河之水天上来⑵，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪⑶。人生得意须尽欢⑷，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯⑸。岑夫子，丹丘生⑹，将进酒，杯莫停⑺。与君歌一曲⑻，请君为我倾耳听⑼。钟鼓馔玉不足贵⑽，但愿长醉不复醒⑾。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑⑿。主人何为言少钱⒀，径须沽取对君酌⒁。五花马⒂、千金裘，呼儿将出换美酒，与尔同销万古愁⒃。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
