import 'package:flutter/material.dart';

void main() {
  runApp(GestureExample());
}

class GestureExample extends StatelessWidget {
  const GestureExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Gesture Detector')),
        body: Center(
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () {
                  print('Hello');
                },

                child: const Text('Tap Me'),
              ),

              SizedBox(height: 30),
              
              GestureDetector(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Tap Me!!',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                onTap: (){
                  print('container Taped');
                },
              ),
              SizedBox(height: 16,),

              InkWell(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                  child: Center(child: Text('Tap Me !!!!!!!!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)),
                ),
                onTap: (){
                  print('HI TAPED');
                },
              )




            ],
          ),
        ),
      ),
    );
  }
}
