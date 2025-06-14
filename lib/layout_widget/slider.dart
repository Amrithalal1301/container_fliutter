import 'package:flutter/material.dart';

void main(){
  runApp(SliderDemo());

}

class SliderDemo extends StatelessWidget {
  const SliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderAlertDialog(),
    );
  }
}
 class SliderAlertDialog extends StatefulWidget{
  @override
  // ignore: library_private_types_in_public_api
  _SlidetAlertDialogState createState() =>_SlidetAlertDialogState ();
  
 }
 
 class _SlidetAlertDialogState  extends State<SliderAlertDialog>{
  double? _sliderValue =0.0;
  void _ShowVlueDialog(double value){
    showDialog(
      
      context: context,
      builder: (BuildContext content){
        return AlertDialog(
          title: const Text('Slider value'),
          content: Text('the current value is $value'),
          actions: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();


              }, child: const Text('close'))
          ],
        );

      }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Slider Alert'),),
      body:Center(
        child:Column(children: [
          const Text('Scroll the Slider'),
          Slider(
            value: _sliderValue ?? 0.0,
             onChanged: (newValue){
              setState(() {
                _sliderValue=newValue;
              });
             },
             min: 0,
             max: 100,
             divisions: 100,
             ),
             ElevatedButton(
              onPressed: (){
                _ShowVlueDialog(_sliderValue ?? 0.0);

             }, child: const Text('Show value'))

        ]
        ) ,
      ),
    );
  }
 }
