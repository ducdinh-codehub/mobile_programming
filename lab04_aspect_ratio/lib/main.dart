import 'package:flutter/material.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo'),),
        body: MyStatelessWidget(),
      ), 
    );
  }
}

class MyStatelessWidget extends StatelessWidget{
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      //width: double.infinity,
      width: 100.0,
      height: 100.0,
      child: AspectRatio(
        //aspectRatio: 16/9,
        aspectRatio: 2.0,

        child: Container(
          width: 100.0,
          height: 50.0,
          color: Colors.red,
        ),
      ),
    );
  }

}

