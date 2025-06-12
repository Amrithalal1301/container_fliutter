





import 'package:flutter/material.dart';
void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Align'),),
        body: Center(
          child: Container(
            
           height: 500,
            width: 500,
            color: Colors.blue[50],
            child: Align(
              alignment: Alignment.topLeft,
              child: const FlutterLogo(size: 60,)),
          
          ),
        ),
      ),
    );
  }
}