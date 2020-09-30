import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/size_config.dart';

import 'widgets/activity_list.dart';
import 'widgets/top_banner.dart';

class DestinationScreen extends StatelessWidget {
  final Destination destination;

  const DestinationScreen({this.destination});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          TopBanner(destination: destination, defaultSize: defaultSize),
          ActivityList(defaultSize: defaultSize, destination: destination)
        ],
      ),
    );
  }
}
