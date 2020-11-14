//画面遷移

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) =>  MainPage(),
        '/subpage': (BuildContext context) =>  SubPage(),
        '/subpage2': (BuildContext context) =>  SubPage2(),
        '/subpage3': (BuildContext context) =>  SubPage2()

      },
    );
  }
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text('塾'),
      ),
      body:

      Container(
        padding:  EdgeInsets.all(32.0),

        child:  Center(

          child:  Column(
            children: <Widget>[

              Text('Main'),
              RaisedButton(onPressed: () => Navigator.of(context).pushNamed("/subpage"), child:  Text('Subページへ'),),
              RaisedButton(onPressed: () => Navigator.of(context).pushNamed("/subpage2"), child: Text('Subページ2へ'),),
              RaisedButton(onPressed: () => Navigator.of(context).pushNamed("/subpage3"), child: Text('Subページ3へ'),)

            ],
          ),
        ),
      ),
    );
  }
}


// リストビューの中にそのままアイコンなどを入れた
class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('国語'),
      ),
      body:
      ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.g_translate),
            title: Text("Google"),
          ),
          ListTile(
            leading: Icon(Icons.computer),
            title: Text("Dart"),
          ),
          ListTile(
            leading: Icon(Icons.mobile_screen_share),
            title: Text("Flutter"),
            trailing:  IconButton(
            onPressed: () {},
            icon: Icon(Icons.brightness_1_outlined),
          ),




          ),
        ],
      ),

    );
  }
}

// ほぼ参考にしたコードのまま
class SubPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('数学'),
      ),
      body:
      Container(

        padding:  EdgeInsets.all(32.0),
        child:  Center(
          child: Column(
            children: <Widget>[
              Text('Sub2'),
              RaisedButton(onPressed: () => Navigator.of(context).pop(), child: Text('戻る'),)
            ],
          ),
        ),
      ),

    );
  }
}

class SubPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('英語'),
      ),
      body:
      Container(

        padding:  EdgeInsets.all(32.0),
        child:  Center(
          child: Column(
            children: <Widget>[
              Text('Sub3'),
              RaisedButton(onPressed: () => Navigator.of(context).pop(), child: Text('戻る'),)
            ],
          ),
        ),
      ),

    );
  }
}




