import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'flutter的底部导航'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  List<Tab> _tabs = <Tab>[
    Tab(
      text: '关注',
    ),
    Tab(
      text: '热门',
    ),
    Tab(
      text: '榜单',
    ),
    Tab(
      text: '战疫情',
    ),
    Tab(
      text: '新鲜事',
    ),
  ];

  @override
  void initState() {
    super.initState();

    //initialIndex初始选中第几个
    _controller = TabController(
      initialIndex: 2,
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        centerTitle: true,
        bottom: TabBar(
          isScrollable: true,
          tabs: _tabs,
          controller: _controller,
        ),
      ),
      body: new ListView.builder(
        padding: new EdgeInsets.all(5.0),
        itemExtent: 200.0,
        itemBuilder: (BuildContext context,int index){
         return new Row(
            children: <Widget>[
              Expanded(
                 child: Container(
                   height: 180,
                   color: Colors.red,
                  ),
                  flex: 1,
                ),
            ],
          );
        },
      ),
    );
  }
}
 