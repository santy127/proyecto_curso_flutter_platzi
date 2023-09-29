import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/diablillo.jpg', 'Tyrion Lannister', '1 review, 5 photos', 'Game of thrones es una serie increible'),
        Review('assets/img/jon_snow.jpg', 'Jon Snow', '1 review, 5 photos', 'Game of thrones es una serie increible'),
        Review('assets/img/sansa_stark.jpg', 'Sansa Stark', '1 review, 5 photos', 'Game of thrones es una serie increible'),
      ],
    );
  }

}