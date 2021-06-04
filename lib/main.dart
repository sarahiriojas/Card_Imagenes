import 'package:flutter/material.dart';

void main() => runApp(RiojasApp());

class RiojasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Cards Katia Riojas'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ],
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items("https://github.com/sarahiriojas/Mis-Imagenes/blob/main/Disco%20duro.jpg?raw=true", "Disco Duro"),
                SizedBox(height: 20.0),
                _items('https://github.com/sarahiriojas/Mis-Imagenes/blob/main/USB.jpg?raw=true', "USB"),
                SizedBox(height: 20.0),
                _items('https://github.com/sarahiriojas/Mis-Imagenes/blob/main/laptop.jpg?raw=true', "Computadora Laptop"),
                SizedBox(height: 20.0),
                _items("https://github.com/sarahiriojas/Mis-Imagenes/blob/main/monitor.png?raw=true", "Pantalla"),
                SizedBox(height: 20.0),
                _items('https://github.com/sarahiriojas/Mis-Imagenes/blob/main/camara.jpg?raw=true', "Camara"),
                SizedBox(height: 20.0),
                _items('https://github.com/sarahiriojas/Mis-Imagenes/blob/main/Bocina.jpg?raw=true', "Bocina"),
                SizedBox(height: 20.0),
              ], //Widget
            ), //List View
          ), //Body
        )); //Material App
  } //Widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.greenAccent[100],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('SSD de 256 GB en buen estado', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ], //Widget
        ), //Column
      ), //Card
    ); //Container
  } //Widget
} //RiojasApp
