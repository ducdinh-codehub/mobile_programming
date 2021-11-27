import 'package:flutter/material.dart';
import 'package:teacher_example/detail_view.dart';
import './settings_view.dart';
class MainView extends StatefulWidget{
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}
class _MainViewState extends State <MainView>{
  Color _bgColor = Colors.white;
  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: Text('Main view')),
    backgroundColor: _bgColor,
    body: Column(
      children: [
        GestureDetector(
          onTap:(){
            Navigator.of(context)
            .push(MaterialPageRoute
            (builder: (context){
              return const DetailView();
            }));
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
        TextButton(onPressed: (){
          Navigator.of(context)
          .push<Color>(MaterialPageRoute(
          builder: (context){
            return const SettingView();
          })).then((value){
            _bgColor = value ?? Colors.white;
            setState(() {});
          },);
        },
          child: const Text('Change background color'),
        ),
      ],
    ),
  );
}
}