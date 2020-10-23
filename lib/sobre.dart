import 'package:flutter/material.dart';


class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(

      appBar: AppBar(
        title: Text('Sobre'),

      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/vinicius.png"),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: RichText(
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.start,
                      
                    text: TextSpan(
                      text: 'O tema do projeto é sobre Reciclagem.\n',
                     style: TextStyle(color: Colors.black, fontSize: 16,fontFamily: "Arial" ) ,
                    children: <TextSpan>[
                      TextSpan(text: 'O objetivo do projeto é sobre auxiliar e incentivar a população a realizar a coleta seletiva de lixo.\n\n'),
                      TextSpan(text: 'O desenvolvedor do projeto é o: Vinicius Assunção Nicolete, cursa Análise e Desenvolvimento de Sistema'),
                        ],
                        ),
                    ),
                  ),

                ],
                  ),
              ),
              RaisedButton(
                onPressed:() {
                  Navigator.pop(context);
                },
                child:Text("Voltar"),
              )
              ],
          ),
        ),
      
      ));
  }
}