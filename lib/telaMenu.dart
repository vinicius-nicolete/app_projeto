import 'package:flutter/material.dart';

class TelaMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(
        title: Text('Tela de Menu'),

      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: ListView(
          children: [
            
            Text("Menu", style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),),
            //Column(
              //children: [
                //Image.asset("images/coleta_reciclado.png",alignment: Alignment.topCenter,),
                //ListTile(
                  //hoverColor: Colors.green[200],
                  
                  //leading: Icon(Icons.local_taxi),    
                 // title: Text('Solicitar coleta', style: TextStyle(fontSize: 24)),
                  
                 // onTap: (){
                 //   Navigator.pushNamed(context, '/coletaReciclado');
               //   },
             //   ),
           //   ],
         //   ),

            Column(
              children: [
                Image.asset("images/cadastro.png",alignment: Alignment.topCenter,),
                ListTile(
                  hoverColor: Colors.green[200],
                  leading: Icon(Icons.add_location_alt),    
                  title: Text('Cadastrar local de recebimento de reciclagem', style: TextStyle(fontSize: 24),),
                  //trailing: Icon(Icons.menu_book),
                  onTap: (){
                    Navigator.pushNamed(context, '/cadastrolocal');
                  },
                ),
              ],
            ),
              Column(
              children: [
                Image.asset("images/ribpreto.png",alignment: Alignment.topCenter,),
                ListTile(
                  hoverColor: Colors.green[200],
                  leading: Icon(Icons.location_city),    
                  title: Text('Visualizar local para entrega de reciclados', style: TextStyle(fontSize: 24),),
                  //trailing: Icon(Icons.menu_book),
                  onTap: (){
                    Navigator.pushNamed(context, '/visualizarmapa');
                  },
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}