import 'package:flutter/material.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget{
   MyApp({Key? key}) : super(key: key);
  
    

  @override
  Widget build(BuildContext context){
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection =  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
      _buildButtonColumn(color, Icons.call, 'Call'),
      _buildButtonColumn(color, Icons.near_me, 'Route'),
      _buildButtonColumn(color, Icons.share, 'Share'),
    ],);

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FLutter layout demo'),
        ),
      
        body: Column(
          children:[
            Container(
              padding: const EdgeInsets.all(32),
                child: Row(
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Oeschien Lake Campground',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text('Kander, Switserland',
                      style: TextStyle(
                          color: Colors.grey[500]
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.star, color: Colors.red[500]),
                  const Text('4.0'),
                ],
              ),
            ),
            buttonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight:FontWeight.w400,
              color: color,
            ),
          ),
          ),
      ],
    );
  }

}