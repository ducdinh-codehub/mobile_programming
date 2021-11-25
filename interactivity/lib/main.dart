import "package:flutter/material.dart";

void main() => runApp(MyApp(),);

////////////TapBoxA////////////
class TapBoxA extends StatefulWidget{
  const TapBoxA({Key? key}) : super(key: key);
  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA>{

  bool _active = false;

  void _handleTap(){
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Activate' : 'Inactivate',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

////////////ParentWidget////////////
class ParentWidget extends StatefulWidget{
    const ParentWidget({Key? key}) : super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget>{
  bool _active = false;

  void _handleTapboxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: TapBoxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

////////////TapBoxB////////////
class TapBoxB extends StatelessWidget{
  const TapBoxB({
    Key? key, 
    this.active = false, 
    required this.onChanged,}) : super(key: key);

    final bool active;
    final ValueChanged<bool> onChanged;

    void _handleTap(){
      onChanged(!active);
    }
    @override
    Widget build(BuildContext context){
      return GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Container(
            child: Center(
              child: Text(
                active ? 'Active' : 'Inactive',
                style: const TextStyle(fontSize: 32.0, color: Colors.white),
              ),
            ),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: active ? Colors.lightGreen[700] : Colors.grey[600],
            )
          ),
        ),
      );
    }

}

////////////App////////////
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo'),
          ),
          body: const Center(child: ParentWidget(),
        ),
      ),
    );
  }
}