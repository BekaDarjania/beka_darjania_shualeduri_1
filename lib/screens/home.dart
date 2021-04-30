import 'package:beka_darjania_shualeduri_1/components/store-item.dart';
import 'package:beka_darjania_shualeduri_1/screens/add.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beka_darjania_shualeduri_1/api.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void _refresh(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beka\'s shualeduri App'),
      ),
      body: Center(
          child: Container(
        color: Colors.grey[300],
        child: Padding(
          padding: EdgeInsets.all(0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300, childAspectRatio: 0.7),
              itemCount: DUMMY_DATA.length,
              itemBuilder: (BuildContext ctx, index) {
                return StoreItem(
                    product: DUMMY_DATA[index],
                    refresh: _refresh);
              }),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddScreen(refresh: _refresh,)));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
