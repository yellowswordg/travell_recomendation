import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/screens/activity_screen/widgets/activity_banner_title.dart';
import 'package:travell_recomendation/screens/destination_screen/widgets/widgets.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/size_config.dart';

class ActivityScreen extends StatelessWidget {
  final Activity activity;

  ActivityScreen({this.activity});
  @override
  Widget build(BuildContext context) {
    // print(activity.frontImage);
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          TopBanner(
            defaultSize: defaultSize,
            imgUrl: activity.frontImage,
            title: ActivityBannerTitle(activity: activity),
          )
        ],
      ),
    );
  }
}
