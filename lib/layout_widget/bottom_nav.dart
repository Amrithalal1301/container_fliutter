import 'package:flutter/material.dart';

void main(){
  runApp(BottomNavigation());
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   int _selectedIndex = 0;
   static final List<Widget> _widgetOptions =<Widget>[
    HomePage(),
    SearchBar(),
    const Text('Profile'),
   
   ];

   void _onItemTapped(int index){
    setState(() {
      
      _selectedIndex = index;
    });

   }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        appBar: AppBar(title: Text('BOTTOM NAVIGATION'),),
        body: Center(
        
          child: _widgetOptions.elementAt(_selectedIndex)
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon:Icon(Icons.home) , label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_sharp),label: 'profile'),
            
            
            
                
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home', style: TextStyle(fontSize:24,fontWeight: FontWeight.bold ,),),
          //Image.network('https://www.istockphoto.com/search/2/image-film?phrase=homepage', width: 150,height: 150, ),
        Image.asset(
           'assets/images/home.jpg',
           
       )

          
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Search', style: TextStyle(fontSize:24,fontWeight: FontWeight.bold ,),),
          Image.asset(
            'assets/images/search.jpg',
          )
        ],
      ),
    );
  }
}