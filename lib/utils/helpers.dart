import 'package:flutter/material.dart';
import 'package:travell_recomendation/utils/constants.dart';

Row buildRatingStars(int rating, {double size = 14}) {
  return Row(
    children: [
      ...List.generate(
        5,
        (index) => index <= rating
            ? Icon(
                Icons.star,
                color: Colors.amber,
                size: size,
              )
            : Icon(
                Icons.star,
                color: kWhite,
                size: size,
              ),
      )
    ],
  );
}
