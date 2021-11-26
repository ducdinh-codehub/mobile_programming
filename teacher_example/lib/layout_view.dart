import 'package:flutter/material.dart';
class MyLayout extends StatefulWidget{
  const MyLayout({Key? key}) : super(key: key);

  @override
  _MyLayoutState createState() =>_MyLayoutState();
}

class _MyLayoutState extends State<MyLayout>{
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth >= 768){
      return Scaffold(
        drawer: const Drawer(child: Scaffold(),),
        appBar: AppBar(title: const Text('data')),
        body: Row(
          children: const [
            Placeholder(),
            Placeholder(),
          ],
        ),
      );
      }else{
        return Scaffold(
        drawer: const Drawer(child: Scaffold(),),
        appBar: AppBar(title: const Text('data')),
        body: const Center(
          child: Text('Hello world'),
        ),
      );
      }
    });
  }
}