import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {


  var formKey = GlobalKey<FormState>();

  var txtusuario = TextEditingController();
  var txtsenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Pagina de Login'),

      ),
      body: 
        SingleChildScrollView(
            child: Container(
            
            padding: EdgeInsets.all(40),
            child: Form(
              key: formKey,
           child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                Image.asset(
                  'images/logo1.png'
                ),
                campoUsuario("Usuário", txtusuario),
                campoSenha("Senha", txtsenha),
                login("Login"),
                sobre("Sobre")

              ],
      ),
            ),
          ),
        ),

    );
  }

  //
  // CAMPO DE Senha
  //
  Widget campoSenha(rotulo, variavelControle){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,

        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
        controller: variavelControle,
        style: TextStyle(fontSize: 28),  

      ),
    );
  }
//
// CAMPO USUARIO
//
  Widget campoUsuario(rotulo, variavelControle){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      
      child: TextFormField(
        
        keyboardType: TextInputType.text,
          decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
        controller: variavelControle,
        style: TextStyle(fontSize: 28),  
        
      ),
    );
  }
  //
  // BOTÃO
  //
  Widget login(rotulo){
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: RaisedButton.icon(
       icon: Icon(Icons.login, color: Colors.blue[400],),
       label: Text("Login"),
        onPressed: (){
          Navigator.pushNamed(context, '/telamenu');
        },
        
        ),
        

      

        
    );
    
  }

  Widget sobre(rotulo){
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: RaisedButton.icon(
        icon: Icon(Icons.info, color:Colors.black),
        label: Text("Sobre"),
        onPressed: (){
          Navigator.pushNamed(context, '/sobre');
        },
        
      ),
    );
  }
}