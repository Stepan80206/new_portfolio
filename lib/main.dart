import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if(constraints.maxWidth>=900){
        return HomePage();
      }else return MobilePage();
    },);

  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex:1,
              child: Avatar(),
            ),
            Expanded(
              flex:1,
              child: Context(),
            )
          ],
        )
      )
    );
  }
}

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("About data ............................"),
      ],
    );
  }
}

class Works extends StatelessWidget {
  const Works({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("My works.................."),
      ],
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Contacts ............................"),
      ],
    );
  }
}

class Avatar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(),
        CircleAvatar(
          backgroundColor: Colors.lime,
          backgroundImage: NetworkImage(""),
          radius: 110,
        ),
        Text("  "),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "data",
            style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,),),
        ),
        Row(),
      ],
    );
  }
}

class Context extends StatefulWidget{
  @override
  _ContextState createState() => _ContextState();
}

class _ContextState extends State<Context> {
    Widget body;

  @override
  void initState() {
    body = About();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex:1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton.icon(
                color:Colors.lightBlue,
                onPressed: (){
                  setState(() {
                    body = About();
                  });
                },
                icon: Icon(Icons.playlist_play),
                label: Text("About"),
              ),
              FlatButton.icon(
                color:Colors.lightBlueAccent,
                onPressed: (){
                  setState(() {
                    body = Works();
                  });
                },
                icon: Icon(Icons.photo_album),
                label: Text("My works"),
              ),
              FlatButton.icon(
                color:Colors.lightGreen,
                onPressed: (){
                  setState(() {
                    body = Contacts();
                  });
                },
                icon: Icon(Icons.phone_android),
                label: Text("Contacts"),
              ),
            ],
          )
        ),
        Expanded(
          flex: 11,
          child:  body,
        )
      ],
    );
  }
}

class MobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Avatar(),
            Expanded(flex: 2, child: Context()),
          ],
        )
      )
    );
  }
}

