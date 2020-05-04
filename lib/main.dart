import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: MyHomePage(),
        );
    }
}

class MyHomePage extends StatefulWidget {


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
    var _homePages = [];

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
        return MaterialApp(
            home: Scaffold(
                appBar: PreferredSize(
                    preferredSize: Size(null, 288),
                    child: Column(
                        children: <Widget>[
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 88,
                                color: Colors.red,
                                padding: EdgeInsets.fromLTRB(14, 20, 14, 0),
                                child: Row(
                                    children: <Widget>[
                                        Icon(Icons.add),
                                        Expanded(
                                            child: Container(
                                                    height: 44,
                                                    margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                                                    padding: EdgeInsets.only(left: 10.0),
                                                    decoration: BoxDecoration(
                                                            color:Colors.white.withOpacity(0.4),
                                                            borderRadius: BorderRadius.all(Radius.circular(30.0))
//                          borderRadius:
                                                    ),
                                                    child: Opacity(
                                                        opacity: 0.8,
                                                        child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: <Widget>[
                                                                Icon(Icons.search, color: Colors.white,size: 20.0,),
                                                                Padding(
                                                                    padding: EdgeInsets.only(bottom: 5.0),
                                                                    child: Text("大家都在搜", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                                                )
                                                            ],
                                                        ),
                                                    )
                                            ),
                                        ),
                                        Icon(Icons.border_color)
                                    ],
                                ),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                color: Colors.red,
                                child: Row(
                                    children: <Widget>[
                                        Expanded(child: Container(
                                            child: TabBar(tabs: _tabs,
                                                indicatorPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                controller: _controller,),
                                        )),
                                        Icon(Icons.keyboard_arrow_down)
                                    ],
                                ),
                            )
                        ],
                    ),
                ),
                body: TabBarView(controller :_controller,children: _tabs),
            )
        );

    }
}
