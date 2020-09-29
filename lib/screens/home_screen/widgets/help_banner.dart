import 'package:flutter/material.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/size_config.dart';

class HelpBanner extends StatelessWidget {
  const HelpBanner({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * 20,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [kGreen, Colors.yellow],
            begin: FractionalOffset.centerRight,
            end: FractionalOffset.bottomRight,
            stops: [0.6, 1]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: defaultSize * 3, horizontal: defaultSize * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome aboard",
              style: TextStyle(
                  fontSize: 20, color: kWhite, fontWeight: FontWeight.w700),
            ),
            Text(
              "We will help you to find the best experience\n based on what you need",
              style: TextStyle(
                fontSize: 14,
                color: kWhite.withOpacity(0.5),
              ),
            ),
            Text(
              "Lets start",
              style: TextStyle(
                  fontSize: 14,
                  color: kWhite,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
