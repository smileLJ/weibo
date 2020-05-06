import 'package:flutter/material.dart';

class BaseHomeListPage extends StatelessWidget {


    String _data;

    BaseHomeListPage(String data) {
        this._data = data;
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 0),
                itemCount: 10,
                itemBuilder: (context, index) => _vedioStartItem(_data, context),

            ),
            color: Colors.white,
            height: double.infinity,
        );
    }


    Widget _buildItem(String data, BuildContext context) =>
            Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                child: Text(data,
                        style: _itemTextstyle),
            );

    TextStyle _itemTextstyle = TextStyle(

    );

    Widget _vedioStartItem(String data, BuildContext context) =>
            Column(
                children: <Widget>[
                    Row(
                        children: <Widget>[
                            Container(
                                padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                                alignment: Alignment.center,
                                child: ClipOval(
                                    child: Icon(Icons.add),
                                ),
                            ),
                            Expanded(
                                child: Container(
                                    height: 44,
                                    child: Opacity(opacity: 0.8, child: Column(
                                        children: <Widget>[
                                            Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text("爱吃才会赢鸭"),
                                            ),
                                            Container(
                                                alignment: Alignment.centerLeft,
                                                child: Text("昨天 12:26 来自吃播超话"),
                                            )
                                        ],
                                    ),),
                                ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 18, 0),
                                child: RaisedButton(onPressed: null, child: Row(
                                    children: <Widget>[
                                        Icon(Icons.add),
                                        Text("关注")
                                    ],
                                ),),
                            ),
                        ],
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(18, 5, 18, 0),
                        child: Text(
                            " 与俞渝之间有和解谈判，而后李国庆单方面终止了和解。对此，李国庆向新浪科技做出回应，早先诉求是兑现22.5%股份，按当当80亿元的估值，一共拿到18亿，之后双方因为首付金额分歧和之后的利息分歧未达成一致。#李国庆澄清吃软饭 ...",
                            maxLines: 4,),),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.fromLTRB(18, 5, 10, 0),
                        child: Text("爱吃才会赢鸭的微博视频"),
                    ),
                    Container(
                        height: 260,
                        margin: EdgeInsets.fromLTRB(18, 5, 18, 0),
                        child: Image.network(
                            'https://wx4.sinaimg.cn/orj480/7c80f731ly1gehglrqfbpj20g00ld75f.jpg',
                            width: MediaQuery
                                    .of(context)
                                    .size
                                    .width, fit: BoxFit.fill,),
                    ),
                    Container(
                        child: Row(
                            children: <Widget>[
                                Expanded(child: Row(
                                    children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.fromLTRB(18, 5, 0, 0),
                                            child: Row(
                                                children: <Widget>[
                                                    Icon(Icons.keyboard),
                                                    Text("转发")
                                                ],
                                            ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(18, 5, 0, 0),
                                            child: Row(
                                                children: <Widget>[
                                                    Icon(Icons.favorite),
                                                    Text("5")
                                                ],
                                            ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(18, 5, 0, 0),
                                            child: Row(
                                                children: <Widget>[
                                                    Icon(Icons.star),
                                                    Text("33")
                                                ],
                                            ),
                                        )
                                    ],
                                )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 18, 0),
                                    child: Icon(Icons.add_circle_outline),
                                )
                            ],
                        ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0,18, 0, 0),
                        height: 0.3,
                        color: Color(0xff98a0a8),
                    )
                ],
            );


}