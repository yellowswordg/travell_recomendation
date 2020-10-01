import 'package:flutter/material.dart';
import 'package:travell_recomendation/utils/constants.dart';

class StarRow extends StatelessWidget {
  final int rating;
  final double size;

  const StarRow({Key key, this.rating, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
}
