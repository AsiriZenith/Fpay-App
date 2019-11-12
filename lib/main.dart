 import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
      /*theme: new ThemeData(
        primarySwatch: Colors.amber
      )*/
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
      //backgroundColor: Colors.black54,
      body: new Stack(
      fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/4.jpg"),
            fit: BoxFit.cover,
            //color: Colors.black26,
            //colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              new Form(
                 child: new Theme(
                      data: new ThemeData(
                        brightness: Brightness.light,
                        //primarySwatch: Colors.red,
                        inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                            //color: Colors.red,
                            fontSize: 77.0,
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
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:89.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 105.0),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 109.0,
                      width: 109.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        /*border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0
                        ),*/
                        image: DecorationImage(
                          image:AssetImage('assets/Projectlogo.png'), 
                        )
                      ),
                    )
                  ],
                )
             ],
           )
        ],
      ),
    );
  }
}
