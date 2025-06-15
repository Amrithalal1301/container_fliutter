import 'package:flutter/material.dart';
void main(){
  runApp(ChipExample());
}

class ChipExample extends StatelessWidget {
  const ChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('CHIP EXAMPLE'),),
      body: Center(
        child: Chip(label: const Text('Flutter Chip',style: TextStyle(color: Colors.red),),
        backgroundColor: const Color.fromARGB(255, 149, 226, 152),
        elevation: 4,
        shadowColor: Colors.grey,
        padding: const EdgeInsets.all(10),
        ),
      ),
      ),
    
    );
  }
}