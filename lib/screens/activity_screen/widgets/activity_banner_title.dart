import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/widgets/star_row.dart';

class ActivityBannerTitle extends StatelessWidget {
  final Activity activity;

  const ActivityBannerTitle({Key key, this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StarRow(rating: activity.rating, size: 20),
        SizedBox(width: 5.0),
        Text(
          activity.name,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 35.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(width: 5.0),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.locationArrow,
              color: kWhite,
              size: 12,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "show on map",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
