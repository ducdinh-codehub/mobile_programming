import 'package:flutter/material.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Demo app'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(constraints.maxWidth > 600){
              return _buildWideContainers();
            }
            else{
              return _buildNormalContainers();
            }
          },
        ),
      ),
    );
  }
  Widget _buildWideContainers(){
  return Center(
    child: Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
    ),
  );
}
Widget _buildNormalContainers(){
  return Center(
    child: Row(
      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
      ],
    ),
    );
}
}


