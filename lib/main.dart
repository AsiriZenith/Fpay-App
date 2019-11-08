 import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.amber
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
      backgroundColor: Colors.lightBlue,
      body: new Stack(
      fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/Projectlogo.png"),
            fit: BoxFit.contain,
            color: Colors.black26,
            colorBlendMode: BlendMode.darken,
            //width: 250,
            //height: 150,
            
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                 child: new Theme(
                      data: new ThemeData(
                        brightness: Brightness.light,
                        primarySwatch: Colors.red,
                        inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                            color: Colors.red,
                            fontSize: 27.0,
                          )
                        )
                      ),
                      child: new Container(
                        padding: const EdgeInsets.all(55.0),
                        
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                            hintText: "Enter UserName",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                          new TextFormField(
                            decoration: new InputDecoration(
                            hintText: "Enter Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                     
                    ],
              ),
                      ),
                 ),
            ),
            /*Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      width: double.infinity,
                    )
                  ],
                )
              ],
            )*/
          ]
          )
        ],
      ),
    );
  }
}
