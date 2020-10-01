import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/screens/activity_screen/widgets/activity_banner_title.dart';
import 'package:travell_recomendation/screens/destination_screen/widgets/widgets.dart';
import 'package:travell_recomendation/screens/home_screen/widgets/widgets.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/size_config.dart';

import 'widgets/image_row.dart';

class ActivityScreen extends StatelessWidget {
  final Activity activity;

  ActivityScreen({this.activity});

  Future<void> _showMyDialog(
      BuildContext context, String url, double defaultSize) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          content: SingleChildScrollView(
            child: Container(
              height: defaultSize * 30,
              width: defaultSize * 30,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(url))),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(activity.frontImage);
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBanner(
            defaultSize: defaultSize,
            imgUrl: activity.frontImage,
            title: ActivityBannerTitle(activity: activity),
          ),
          SizedBox(height: defaultSize * 2),
          CustomTitle(
            defaultSize: defaultSize,
            title: "Pictures",
          ),
          SizedBox(height: defaultSize * 2),
          ImageRow(defaultSize: defaultSize, activity: activity),
          SizedBox(height: defaultSize * 2),
          CustomTitle(
            defaultSize: defaultSize,
            title: "Intorduce",
          ),
          SizedBox(height: defaultSize * 2),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: Expanded(
              child: Container(
                child: Text(
                  activity.description,
                  style: TextStyle(
                    color: kGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
