import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {

  String buttonText; // Declarar la variable como final

  ButtonPurple(this.buttonText); // Inicializar la variable en el constructor

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // En esta parte podemos poner el comportamiento que queramos que tenga este boton
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Navegando"),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFF800000),  // Rojo oscuro (simbolizando la sangre y el fuego)
                  Color(0xFF2E2D30)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            )
        ),

        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
