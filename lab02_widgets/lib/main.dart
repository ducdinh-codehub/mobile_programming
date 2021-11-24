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
/*class MyApp extends StatelessWidget{
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
}*/

// Third example
/*class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App Title')),
        body: Center(
          child: Column(
            children:[
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.deepOrangeAccent,
              ),
              CircleAvatar(
                radius: 60,
                child: Icon(Icons.face, size:120),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 140,
                width: double.infinity,
                child: Card(
                  color: Colors.amber,
                  elevation: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

// Forth example
/*class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('App Title')),
      body: SafeArea(
        child: Stack(
          children:[
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.deepOrangeAccent,
            ),

            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 60,
                child: Icon(Icons.face, size: 120),
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 260),
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 100,
              width: double.infinity,
              
              child: Card(
                color: Colors.white,
                elevation: 3,
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}*/

// Requirements
// First requirement added column widget
/*
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('App Title')),
      body: SafeArea(
        child: Stack(
          children:[
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.deepOrangeAccent,
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                    radius: 60,
                    child: Icon(Icons.face, size: 120),
                  ),
                ),
              ],
            ),
            
            Container(
              margin: EdgeInsets.only(top: 260),
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 100,
              width: double.infinity,
              
              child: Card(
                color: Colors.white,
                elevation: 3,
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}*/

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Duc\'s app title'), backgroundColor: Colors.red),
          body: SafeArea(
            
            child: Stack(
              
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.deepOrangeAccent
                ),
                Column(
                  children:[
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 60,
                      child: Icon(Icons.adb_rounded, size:120),
                    ),
                  ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 260),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  width: double.infinity,

                  child: Card(
                    color: Colors.red,
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:[
                            Text(
                              'Photo',
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              '5,000',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Photo',
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              '5,000',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ]
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Photo',
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              '5,000',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ), 
    );
  }
}