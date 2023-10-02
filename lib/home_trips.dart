import 'package:flutter/material.dart';
import 'package:proyecto_curso_flutter_platzi/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  final descriptionDummy = 'El libro mejor vendido de la serie "A Song of Ice and Fire" escrito por George R.R, es llevado a la pantalla chica cuando HBO decide recrear esta historia épica de fantasía. Es la descripción de dos familias poderosas, reyes y reinas, caballeros y renegados, hombres falsos y honestos, haciendo parte de un juego mortal por el control de los Siete Reinados de Westeros y por sentarse en el trono más alto. Martin es el co productor ejecutivo y uno de los escritores de la serie que fue filmada en el Norte de Irlanda y Malta. ';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Game of thrones', 4, descriptionDummy) ,
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
  
}