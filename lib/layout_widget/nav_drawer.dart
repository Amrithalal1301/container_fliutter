import 'package:flutter/material.dart';

void main(){
  runApp(NavExample());
}

class NavExample extends StatelessWidget {
  const NavExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePAge(),
    );
  }
}

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
String _content = 'Home PAge';
List<String> _itemList =['iPhone','Samsung S22','Samsung A14','Pixel 8 pro','Nothing 2A'];
void _updateContent(String newContent ){
  setState(() {
    _content = newContent;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Drawer'),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              
              child: Text('Products',style: TextStyle(color: Colors.white,fontSize: 24),)
              ),
              ListTile(
                title: Text('Mobiles'),
                onTap: () {
                  _updateContent('Mobiles');
                  Navigator.pop(context);
                },

              ),
              ListTile(
                title: Text('Computers'),
                onTap: (){
                  _updateContent('Computers');
                  Navigator.pop(context);
                },

              )
          ],
        ),
      ),

      body:_buildBody()

    );
  }

  Widget _buildBody(){
    if(_content == 'Mobiles'){
      return ListView.builder(
        itemCount: _itemList.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(_itemList[index]),
            onTap: (){
              
            },
          );

        }
        );
    }
    else if(_content == 'Computers'){
      return const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star),
            SizedBox(width: 10,),
            Text('Apple'),
            Icon(Icons.favorite),
            SizedBox(width: 10,),
            Text('Chrome Book')

          ],
        ),
      );
    }
    else {
      return Center(child: Text(_content),);
    }
  }
}