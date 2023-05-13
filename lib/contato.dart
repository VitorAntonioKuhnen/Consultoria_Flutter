import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuContato extends StatelessWidget {
  const MenuContato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
      ),
      body: Column(
        // margin: EdgeInsets.only(bottom: 20, left: 10),
        children: [ Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Image.asset('images/detalhe_contato.png'),
              Text('Contato', style: TextStyle( fontSize: 20),),
            ],
          ),
        ),
        Column(
          children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                
              child: Text('atendimento@atmconsutoria.com.br'),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                
              child: Text('Telefone: (11) 3525-8596'),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                
              child: Text('Celular: (11) 99586-5236'),
              ),
          ],
        )
        ]
      ),
    );
  }
}