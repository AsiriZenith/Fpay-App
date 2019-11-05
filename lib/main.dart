import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}
class LoginPage extends StatefulWidget{
  @override  
  State createState() => new LoginPageState();
}
class LoginPageState extends State<LoginPage>{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white70,
      body: new Stack(
       // fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/Projectlogo.png"),
            fit: BoxFit.fill,
            color: Colors.black26,
            colorBlendMode: BlendMode.darken,
            width: 250,
            height: 250,
          ),
          new Column(
            //mainAxisAlignment: mainAxisAlignment.center,
            children: <Widget>[
              new Form(
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                      hintText: "Enter UserName",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
            )
          ]
          )
        ],
      ),
    );
  }
}
