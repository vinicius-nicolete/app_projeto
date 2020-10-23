import 'package:flutter/material.dart';

class CadastroLocal extends StatefulWidget {
  @override
  _CadastroLocalState createState() => _CadastroLocalState();
}

class _CadastroLocalState extends State<CadastroLocal> {
  GlobalKey<FormState> _key = new GlobalKey();
  var _keyScaffold = GlobalKey<ScaffoldState>();
 
  String cep, logradouro, numero,complemento,bairro, cidade, estado, pais, telefone;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: _keyScaffold,
        appBar:  AppBar(
          title:  Text('Adicionar nova Localidade'),
        ),
        body:  SingleChildScrollView(
          child:  Container(
            margin:  EdgeInsets.all(20.0),
            child:  Form(
             key: _key,
              
              child: _formUI(),
            ),
          ),
        ),
      
    ); 
  }

  Widget _formUI() {
    return  Column(
      children: [
         TextFormField(
          decoration:  InputDecoration(hintText: 'Cep'),
          maxLength: 8,
          keyboardType: TextInputType.number,
          validator: _validarCep,
          onSaved: (String val) {
            cep = val;
          },
        ),
         TextFormField(
            decoration:  InputDecoration(hintText: 'Logradouro'),
            keyboardType: TextInputType.streetAddress,
            maxLength: 100,
            validator: _validarLogradouro,
            onSaved: (String val) {
              logradouro = val;
            }),
         TextFormField(
            decoration:  InputDecoration(hintText: 'Numero'),
            keyboardType: TextInputType.number,
            maxLength: 5,
            validator: _validarNumero,
            onSaved: (String val) {
              numero = val;
            }),
             TextFormField(
            decoration:  InputDecoration(hintText: 'Complemento'),
            maxLength: 30,
            validator: _validarComplemento,
            onSaved: (String val) {
              logradouro = val;
            }),
             TextFormField(
            decoration:  InputDecoration(hintText: 'Bairro'),
            maxLength: 30,
            validator: _validarBairro,
            onSaved: (String val) {
              logradouro = val;
            }),
             TextFormField(
            decoration:  InputDecoration(hintText: 'Cidade'),
            maxLength: 30,
            validator: _validarCidade,
            onSaved: (String val) {
              logradouro = val;
            }),
             TextFormField(
            decoration:  InputDecoration(hintText: 'Estado'),
            maxLength: 30,
            validator: _validarEstado,
            onSaved: (String val) {
              logradouro = val;
            }),
             TextFormField(
            decoration:  InputDecoration(hintText: 'Pais'),
            maxLength: 30,
            validator: _validarPais,
            onSaved: (String val) {
              logradouro = val;
            }),
             TextFormField(
            decoration:  InputDecoration(hintText: 'Telefone com DDD'),
            keyboardType: TextInputType.phone,
            maxLength: 11,
            validator: _validarTelefone,
            onSaved: (String val) {
              logradouro = val;
            }),
         SizedBox(height: 15.0),
         RaisedButton(
          onPressed: () {
            _sendForm();
          },
          child:  Text('Cadatrar'),
        )
      ],
    );
  }

  String _validarCep(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length == 0) {
      return "Informe o CEP";
    }else if(value.length != 8){
      return "O CEP deve ter 8 dígitos";
    }else if (!regExp.hasMatch(value)) {
      return "O CEP só pode conter números";
    }
    return null;
  }

  String _validarLogradouro(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Logradouro";
    } else if(!regExp.hasMatch(value)){
      return "Logradouro Invalido";
    }
    return null;
  }

  String _validarNumero(String value) {
    String pattern =  r'(^[0-9]*$)';
    RegExp regExp =  RegExp(pattern);
    if (value.length == 0) {
      return "Informe o número do Logradouro";

    } else if(!regExp.hasMatch(value)){
      return "Número inválido";
      
    }else {
      return null;
    }
  }

  String _validarComplemento(String value) {
    String patttern = r'(^[a-zA-Z 0-9 ]*$)';
    RegExp regExp =  RegExp(patttern);
     if (!regExp.hasMatch(value)) {
      return "Complemento Inválido ";
    }
    return null;
  }
    String _validarBairro(String value) {
    String patttern = r'(^[a-zA-Z 0-9 ]*$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Bairro";
    }else if (!regExp.hasMatch(value)) {
      return "Bairro Inválido";
    }
    return null;
  }  
  String _validarCidade(String value) {
    String patttern = r'(^[a-zA-Z 0-9 ]*$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length == 0) {
      return "Informe a Cidade";
    }else if (!regExp.hasMatch(value)) {
      return "Cidade Inválidade";
    }
    return null;
  }  
  String _validarEstado(String value) {
    String patttern = r'(^[a-zA-Z]*$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Estado";
    }else if (!regExp.hasMatch(value)) {
      return "Estado Inválido";
    }
    return null;
  }  
  String _validarPais(String value) {
    String patttern = r'(^[a-zA-Z]*$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length == 0) {
      return "Informe o País";
    }else if (!regExp.hasMatch(value)) {
      return "País Invalido";
    }
    return null;
  }  
  String _validarTelefone(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Telefone com DDD";
    } else if(value.length < 10){
      return "O telefone deve ter 10 ou 11 dígitos";
    }else if (!regExp.hasMatch(value)) {
      return "O número do telefone so deve conter dígitos";
    }
    return null;
  }
 _sendForm() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      _keyScaffold.currentState.showSnackBar(SnackBar(
      content: Text('Localização adicionada com sucesso.'),
      duration: Duration(seconds: 1),
      
                    
      )
      
      );


    } 
  }
}

