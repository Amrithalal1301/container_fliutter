import 'package:flutter/material.dart';

void main(){
runApp( Demo());
}

class Demo extends StatelessWidget{
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SnackBarExample(),
    );
  }

}
class SnackBarExample extends StatefulWidget{
  const SnackBarExample({super.key});


  @override
  _SnackBarExampleState createState() => _SnackBarExampleState();
}
  
  class _SnackBarExampleState extends State<SnackBarExample> {

    String? _displayText = '';

    void _showSnackBar(){
      final snackBar = SnackBar(content: Text('This is a Snack Bar'),
      duration: Duration(seconds:3) ,
      action: SnackBarAction(label: 'undo', onPressed: (){
        setState(() {
          _displayText ='UNDO BUTTON CLICKED';
        });
      }),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('SNACK BAR'),),
      body: Center(child: Column(
        children: [
          ElevatedButton(onPressed: _showSnackBar, 
          child: const Text('Show Snack Bar')),
          const SizedBox(height: 20,),
          Text(_displayText.toString()),

        ],
      )),
    );
  }
    
  }