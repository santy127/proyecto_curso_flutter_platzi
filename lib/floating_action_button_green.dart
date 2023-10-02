import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}


class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  void onPressedFav(){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Agregaste a tus Favoritos"),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFFFFD700),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav, // Aquí llamamos el metodo declarado arriba
      child: Icon(
        Icons.favorite_border
      ),
    );
  }
  
}