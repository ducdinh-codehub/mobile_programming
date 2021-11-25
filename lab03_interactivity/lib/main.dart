import 'package:flutter/material.dart';

void main() => runApp(MyApp(),);

class FavoriteWidget extends StatefulWidget{
  const FavoriteWidget({Key? key}) : super(key: key);
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();

}

class _FavoriteWidgetState extends State<FavoriteWidget>{
  bool _isFavorited = true;
  bool _isLiked = true;
  int _favoriteCount = 41;
  void _toggleFavorite(){
    setState((){
      if(_isFavorited){
        _favoriteCount -= 1;
        _isFavorited = false;
      }else{
        _favoriteCount +=1;
        _isFavorited = true;
      }
    });
  }


  void _toggleLiked(){
    setState((){
      if(_isLiked){
        _isLiked = false;
      }else{
        _isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children:[
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited 
            ? const Icon(Icons.star)
            : const Icon(Icons.star_border)),
            color: Colors.blue[500],
            onPressed: _toggleFavorite,
          ),
        ),
        
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isLiked
            ? const Icon(Icons.thumb_up_alt)
            : const Icon(Icons.thumb_up_alt_outlined)),
            color: Colors.blue[500],
            onPressed: _toggleLiked,
          ),
        ),
      ],
    );
  }
}


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

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FLutter layout demo'),
        ),
      
        body: ListView(
          children:[
            Image.asset(
              './images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
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
                  //Icon(Icons.star, color: Colors.red[500]),
                  //const Text('4.0'),
                  const FavoriteWidget(),
                ],
              ),
            ),
            buttonSection,
            textSection,
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