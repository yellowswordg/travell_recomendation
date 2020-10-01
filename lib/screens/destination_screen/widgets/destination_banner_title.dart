import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';

class DestinationBannerTitle extends StatelessWidget {
  const DestinationBannerTitle({
    Key key,
    @required this.destination,
  }) : super(key: key);

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          destination.city,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 35.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(width: 5.0),
        Text(
          "${destination.activities.length} Destinations",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
