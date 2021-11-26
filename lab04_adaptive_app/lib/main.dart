import 'package:flutter/material.dart';
import 'package:lab04_adaptive_app/src/people.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity(horizontal: 4.0, vertical: 4.0),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        body: LayoutBuilder(
          builder: (context, constraints){
            if(constraints.maxWidth > 600){
              return WideLayout();
            }else{
              return NarrowLayout();
            }
        },
      ),
    );
  }
}

class PersonDetail extends StatelessWidget{
  //const PersonDetail({Key? key}) : super(key: key);
  final Person person;
  // ignore: 
  const PersonDetail(this.person);
  @override
  Widget build(BuildContext context){
    
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(person.name),
          Text(person.phone),
          RaisedButton(onPressed: null, 
          child: Text("Contact Me"),)
        ],
      ),
    );
  }
}

class NarrowLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return PeopleList(
      onPersonTap: (person) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: PersonDetail(person)
          ),
        ),
      ),
    );
  }
}

class WideLayout extends StatefulWidget{
  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout>{
  Person _person = Person("", "", "");

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: PeopleList(
            onPersonTap:(person) => setState(() => _person = person)), 
            ),
            width: 250,
          ),
        Expanded(child: _person == null ? Placeholder() : PersonDetail(_person), flex: 3,),
      ],
    );
  }
}

class PeopleList extends StatelessWidget{
  final void Function(Person) onPersonTap;
  
  const PeopleList({required this.onPersonTap});
  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        for(var person in people)
        ListTile(
          leading: Image.network(person.picture),
          title: Text(person.name),
          onTap: () => onPersonTap(person),
        ),
      ],
    );
  }
}