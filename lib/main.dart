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
                            color: Colors.red,
                            fontSize: 77.0,
                          )
                        )
                      ),
                      
                      child: new Container(
                        padding: EdgeInsets.only(top:154.0,left: 45.0,right: 40.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                            labelText: "Enter UserName",
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.white54
                            )
                            ),
                          keyboardType: TextInputType.text,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                            labelText: "Enter Password",
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.white54
                            )
                            ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          alignment: Alignment(1.0, 0.0),
                          padding: EdgeInsets.only(top: 15.0, left: 25.0),
                          child: InkWell(
                            child: Text('Forgot Password',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 13.0,
                              decoration: TextDecoration.underline
                            ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Container(
                          height: 30.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            shadowColor: Colors.greenAccent,
                            color: Colors.green,
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
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
                        //borderRadius: BorderRadius.circular(35),
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
           ),
           /*SizedBox(height: 15.0),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                 'To Register Here',
                 style: TextStyle(
                   fontFamily: 'Montserrat'
                ),
               ),
               SizedBox(width: 5.0),
               InkWell(
                 onTap: () {},
                 child: Text('Register',
                  style: TextStyle(
                   color: Colors.green,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.bold,
                   decoration: TextDecoration.underline
                  ),
                 ),
               )
             ],
           )*/
        ]
      )
    );
  }
}
