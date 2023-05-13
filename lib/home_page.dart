import 'package:atm_consultoria/clientes.dart';
import 'package:atm_consultoria/contato.dart';
import 'package:atm_consultoria/empresa.dart';
import 'package:atm_consultoria/servico.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM Consultoria'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  // margin: EdgeInsets.only(left: 50, right: 5, top: 25),
                    Image.asset('images/logo.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                        child: GestureDetector(
                                  onTap: (){
                                    print("Empresa");
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MenuEmpresa(),));
                                  },
                                  child: Image.asset('images/menu_empresa.png'),
                                  
                                ),

                        ),
                        Container(
                          margin: EdgeInsets.all(25),
                          child: GestureDetector(
                                    onTap: (){
                                      print("Servico");
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => MenuServicos(),));
                                    },
                                    child: Image.asset('images/menu_servico.png'),
                                    
                                  ),

                        ),
                      ],
                    ),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child:  GestureDetector(
                                  onTap: (){
                                    print("Cliente");
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MenuClientes(),));
                                  },
                                  child: Image.asset('images/menu_cliente.png'),
                                  
                                ),
                        ),
                        Container(
                          margin: EdgeInsets.all(25),
                          child:  GestureDetector(
                                  onTap: (){
                                    print("Contato");
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => MenuContato(),));
                                  },
                                    child: Image.asset('images/menu_contato.png'),
                                  
                                ),
                        )
                      ],
                    ),
              
                
          ],
        ),
        ),
    );
  }
}