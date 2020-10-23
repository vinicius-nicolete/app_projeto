import 'package:flutter/material.dart';


class VisualizarMapa extends StatefulWidget {
  @override
  _VisualizarMapaState createState() => _VisualizarMapaState();
}

class _VisualizarMapaState extends State<VisualizarMapa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Mapa"),
      ),
      body: Container(
        padding:EdgeInsets.all(30) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("INSERIR GOOGLE MAPS AQUI", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold))
          ]
        ),
      )
    );
  }
}