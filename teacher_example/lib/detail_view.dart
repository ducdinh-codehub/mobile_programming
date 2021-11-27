import 'package:flutter/material.dart';
import 'package:teacher_example/main_view.dart';

class DetailView extends StatelessWidget{
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Detail view')
      ),
      body: GestureDetector(
        onTap: (){
          return Navigator.of(context).pop(MaterialPageRoute(builder: (context){
            return const MainView();
          })) ;
        },
      child: Hero(
        tag: 'imageHero',
        child: Image.network(
        'https://picsum.photos/250?image=9',
      ),
      ),
    ),
    );
  }
}