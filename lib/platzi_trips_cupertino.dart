import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo),
            label: "", // Deja esto vacío si no quieres una etiqueta
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.indigo),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.indigo),
            label: "",
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        // Utiliza el mismo enfoque que en tu código original para construir las vistas de pestaña.
        Widget tabPage;
        switch (index) {
          case 0:
            tabPage = HomeTrips();
            break;
          case 1:
            tabPage = SearchTrips();
            break;
          case 2:
            tabPage = ProfileTrips();
            break;
          default:
            tabPage = HomeTrips(); // Puedes elegir una vista predeterminada aquí.
        }
        return CupertinoTabView(
          builder: (BuildContext context) => tabPage,
        );
      },
    );
  }
}
