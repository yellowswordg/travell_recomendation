import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/size_config.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key key,
    @required this.destination,
    @required this.defaultSize,
  }) : super(key: key);

  final Destination destination;
  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: kGrey,
                offset: Offset(0.0, 2.0),
                blurRadius: 6,
              )
            ],
          ),
        ),
        Hero(
          tag: destination.imageUrl,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              destination.imageUrl,
              fit: BoxFit.cover,
              height: SizeConfig.screenWidth,
            ),
          ),
        ),
        Container(
          height: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Positioned(
          top: defaultSize * 5,
          left: defaultSize * 2,
          child: Container(
            decoration: BoxDecoration(
                color: kIconsCarouselGreen.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ),
        Positioned(
          left: defaultSize * 2,
          bottom: defaultSize * 4,
          child: Column(
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
          ),
        )
      ],
    );
  }
}
