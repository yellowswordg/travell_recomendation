import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/size_config.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    Key key,
    @required this.defaultSize,
    this.title,
    this.imgUrl,
  }) : super(key: key);

  final String imgUrl;
  final double defaultSize;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenWidth * 0.8,
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
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.cover,
            height: SizeConfig.screenWidth * 0.8,
          ),
        ),
        Container(
          height: SizeConfig.screenWidth * 0.8,
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
          child: title,
        )
      ],
    );
  }
}
