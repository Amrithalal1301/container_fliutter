import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage (),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  
 

  @override
 void initState(){
    super.initState();
    _tabController = TabController(length: 3,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Tab Bar'),
      bottom: TabBar(
        controller: _tabController,
        tabs: const [
          
          Tab(icon: Icon(Icons.home), text: 'Home',),
          Tab(icon: Icon(Icons.search), text: 'Search',),
          Tab(icon: Icon(Icons.person), text: 'Profile',),

        ]),
      ),

      body:
  
      TabBarView(
         
        controller: _tabController,
        children:[
        //add your tab views here
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
             Text('Home Page'),
             SizedBox(height: 30,),
             OutlinedButton(onPressed: (){},
              child: const Text('View Gallery'))
          ]
          ,
        ), 
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              maxLength: 1000,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                
                hintText: 'Search....',
            
              ),
            ),
          ),
        ),
        Center(
          
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
            Container(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  Icon(Icons.person_2_rounded, size: 75,),
                  Text('Profile')
                ],
      
              ),
              
            ),
            
          ],),
        )
        
        
       
        ]
        
        ),
        

    );
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
}