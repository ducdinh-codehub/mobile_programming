import "package:flutter/material.dart";

void main() => runApp(
  //Center(
  //  child: Text(
  //    "Hello mobile",
  //    textDirection: TextDirection.ltr,
  //  ),
  //)
  MyApp(),
);

//First example
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context){
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(title: Text('App Title')),
//        body: Center(
//          child: Text(
//            'Hello, World!',
//            style: TextStyle(color: Colors.red),
//          ),
//        ),
//      ),
//    );
//  }
//}

//Second example
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App Title')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'I',
                style: Theme.of(context).textTheme.headline2,
              ),
              Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 44,
              ),
              Text(
                'Flutter',
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          ),
        ),
      ),
    );
  }
}