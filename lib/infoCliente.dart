import 'package:atm_consultoria/clientesBD.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class infoCliente extends StatefulWidget {
  final List<String> cliente;
  // const infoCliente({super.key});
infoCliente({Key? key, required this.cliente}) : super(key: key);
  @override
  State<infoCliente> createState() => _infoClienteState();
}

class _infoClienteState extends State<infoCliente> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
    );
  }
}