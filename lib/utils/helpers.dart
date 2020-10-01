import 'package:flutter/material.dart';
import 'package:travell_recomendation/utils/constants.dart';

Row buildRatingStars(int rating) {
  return Row(
    children: [
      ...List.generate(
        5,
        (index) => index <= rating
            ? Icon(
                Icons.star,
                color: Colors.amber,
                size: 14,
              )
            : Icon(
                Icons.star,
                color: kWhite,
                size: 14.0,
              ),
      )
    ],
  );
}
