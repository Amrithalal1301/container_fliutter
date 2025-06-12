import 'package:flutter/material.dart';
void main(){
  runApp(const MyWidget());

}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    
      home: Scaffold(
        
        appBar: AppBar(title: Text('CONTAINER'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 100,
            height: 50,
            color: Colors.amber,
            child: const Text('chat'),
            padding: const EdgeInsets.all(8),
           ),
        
            Container(
            margin: const EdgeInsets.only(top: 50),
            width: 100,
            height: 200,
            color: Colors.lightBlue,
            child: const Text('call'),
            padding: const EdgeInsets.all(20),
           ),
            Container(
            margin: const EdgeInsets.all(8),
            width: 200,
            height: 100,
            color: Colors.orange,
            child: const Text('video call'),
            padding: const EdgeInsets.all(8),
           )
          ],
        ),
      ),
      
      
      ),
      
    );
  }
}