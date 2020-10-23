import 'package:flutter/material.dart';
import 'sobre.dart';
import 'paginaLogin.dart';
import 'telaMenu.dart';
import 'cadastroLocal.dart';
import 'visualizarMapa.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Recicla Ribeirão",

      theme: ThemeData(
      primaryColor: Colors.green[300],
      backgroundColor: Colors.white,
      fontFamily: 'Arial',
      
      ),
    //Navegacao
    initialRoute: '/primeiratela',
    routes: {
      '/primeiratela': (context) => PrimeiraTela(),
      '/paginalogin': (context) => TelaPrincipal(),
      '/sobre': (context) => Sobre(),
      '/telamenu':(context) => TelaMenu(),
      '/cadastrolocal':(context) => CadastroLocal(),
      '/visualizarmapa':(context) => VisualizarMapa(),
      
    },

  )
  );
}

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text('Tela de Entrada'),
            ),
            body:
            Container(
              child: SingleChildScrollView
              (child: RaisedButton(
                onPressed: (){
                Navigator.pushNamed(context, '/paginalogin');
                },
                child: Text("Entrar"),
                color: Colors.grey[100],
                
              )
              
              ),
              alignment: Alignment.center,
            ),
    );
  }
}

