import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('App Tarjetas Villegas'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //fin widget []
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/CamilaVS/imagenes2/main/disco%20duro.jpeg', 'Disco Duro'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/CamilaVS/imagenes2/main/memoria%20usb.jpg', 'Memoria Usb'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/CamilaVS/imagenes2/main/laptop.jpg', 'Laptop'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/CamilaVS/imagenes2/main/mo.jpg', 'Monitor'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/CamilaVS/imagenes2/main/camarita.jpeg', 'Camara'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/CamilaVS/imagenes2/main/bocina.jpg', 'Bocina'),
                SizedBox(height: 5.0),
              ], //fin de widget
            ),
          ), //fin de container
        )); // fin de scaffold
  } //fin de widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.indigoAccent,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
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
          ],
        ),
      ),
    );
  }
} //fin de mi tarjeta app
