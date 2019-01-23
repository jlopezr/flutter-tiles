import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'home.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  var _tabs = [
    Home(),
    Center(child: Text("Buscador")),
    Center(child: Text("Recetas")),
    Center(child: Text("Perfil")),
    Center(child: Text("Carrito"))
  ];

  void onTabTapped(int index) {
    setState(() {
      print("INDEX $index");
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mycook'),
        backgroundColor: Colors.orangeAccent,
        leading:
            /*new Image.asset(
            'assets/icon.png',
            width: 25.0,
            height: 25.0,
          ) */
          Padding(padding: EdgeInsets.all(15.0), 
            child:SvgPicture.asset("assets/icon2.svg", color: Colors.white,)
            ,)
            
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Buscador'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), title: Text('Recetas')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text('Perfil')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Carrito'))
        ],
      ),
    );
  }
}
