import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

// Clase miembro
class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;

  // Lista de Taps
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    // Para controlar el estado del Widget
    setState(() {
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Esta va a ser la base de todo lo que funcione en nuestro proyecto
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          // primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          selectedItemColor: Colors.black87, // Establece el color del ícono seleccionado
          currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Buscar'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Perfil'
              ),
            ]
        ),
      ),
    );
  }
  
}