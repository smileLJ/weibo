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
                itemBuilder: (context, index) => _buildItem(_data),

            ),
            color: Colors.white,
            height: double.infinity,
        );
    }


    Widget _buildItem(String data) =>
            Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                child: Text(data,
                        style: _itemTextstyle),
            );

    TextStyle _itemTextstyle = TextStyle(

    );

}