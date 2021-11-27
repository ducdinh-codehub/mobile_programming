import 'package:flutter/material.dart';

class SettingView extends StatelessWidget{
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Setting view')),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(
            child: Row(
              children:[
              GestureDetector(
                onTap: (){
                  Navigator.of(context)
                  .pop<Color>(Colors.red);
                },
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              ),
              const Text('Red'),
            ],
            ),
          ),
          SizedBox(width: 10, height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
            GestureDetector(
              onTap: (){
                Navigator.of(context)
                .pop<Color>(Colors.green);
              },
              child: Container(
                width: 20,
                height: 20,
                color: Colors.green,
              ),
            ),
            const Text('Green'),
            ],
          ),
          SizedBox(width: 10, height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              GestureDetector(
                onTap: (){
                  Navigator.of(context)
                  .pop<Color>(Colors.blue);
                },
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue,
                ),
              ),
              const Text('Blue'),
            ],
          ),
        ],
      ),
      ),
    );
  }
}