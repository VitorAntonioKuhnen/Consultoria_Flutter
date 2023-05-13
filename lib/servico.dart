import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuServicos extends StatelessWidget {
  const MenuServicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços'),
      ),
      body: Column(
        children: [
          Row(
            children:[
              Image.asset('images/detalhe_servico.png'),
              Text('Nossos Serviços', style: TextStyle( fontSize: 20),),
              ]
          ),
          SizedBox(
              height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                
              child: Text('Consultoria'),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                
              child: Text('Cálculo de preços'),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                
              child: Text('Acompanhamento de projetos'),
              ),
            ],
          )
        ],
      ),
    );
  }
}