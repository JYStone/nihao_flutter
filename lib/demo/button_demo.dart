import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {},
          child: Text('Button'),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          onPressed: () {},
          label: Text('Button'),
          icon: Icon(Icons.add),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: StadiumBorder(),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            // textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            elevation: 0.0,
          ),
        ),
        SizedBox(
          width: 18,
        ),
        RaisedButton.icon(
          onPressed: () {},
          label: Text('Button'),
          icon: Icon(Icons.add),
          splashColor: Colors.grey,
          // 按钮的阴影效果
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    // 带边框的按钮
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: StadiumBorder(),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            // 溅墨效果
            splashColor: Colors.grey[100],
            // textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 18,
        ),
        OutlineButton.icon(
          onPressed: () {},
          label: Text('Button'),
          icon: Icon(Icons.add),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    // 设置按钮宽度
    final Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 130.0,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            // 溅墨效果
            splashColor: Colors.grey[100],
            // textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );
    // 占满一排所有的宽度
    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 占满一排所有的宽度
        Expanded(
          // width: 130.0,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            // 溅墨效果
            splashColor: Colors.grey[100],
            // textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          // width: 130.0,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            // 溅墨效果
            splashColor: Colors.grey[100],
            // textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );
    // buttonBar
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
          child: ButtonBar(
            // alignment: Alignment.center,
            children: [
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                // 溅墨效果
                splashColor: Colors.grey[100],
                // textColor: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                // 溅墨效果
                splashColor: Colors.grey[100],
                // textColor: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButton,
            expandedButtonDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
