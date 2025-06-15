import 'package:flutter/material.dart';
void main(){
  runApp(CardExample());
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('CARD EXAMPlE'),),
        body: Center(child: Card(
          elevation: 5,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Container(
            padding: const EdgeInsets.all(16),
            width: 250,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Flutter Data',
                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8,),
                Text('This is a Card Example'  ,  textAlign: TextAlign.center,),
                
              ],

            ),
          ),

        ),),
      ),
    );
  }
}