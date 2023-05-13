import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'clientesBD.dart';

class MenuClientes extends StatefulWidget {
  const MenuClientes({super.key});

  @override
  State<MenuClientes> createState() => _MenuClientesState();
}

class _MenuClientesState extends State<MenuClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          //ItemCount é a quantidade de vezes que irá ter a repetição do conexto
          //Index é a posição do item dentro do laço
          child: ListView.builder(
              itemCount: Clientes[0]['users'].length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(Clientes[0]['users'][index]['image']),
                    
                    ),
                    title: Text(Clientes[0]['users'][index]['firstName'] + ' ' + Clientes[0]['users'][index]['lastName']),
                    subtitle: Text(Clientes[0]['users'][index]['phone']),
                    trailing: IconButton(
                        onPressed: () {
                          
                          setState(() {
                            // tarefasExc.add(tarefaSub[index]);
                            // tarefaSub.removeAt(index);

                          }
                          );
                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //   content: Text('Tarefa Deletada!!'),
                          //   duration: Duration(seconds: 2),
                          // )
                          // );
                        },
                        icon: Icon(Icons.more_horiz_outlined)));
              }
            )
          ),
    );
  }
}