import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travell_recomendation/data/data.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/screens/home_screen/widgets/activity_carousel.dart';
import 'package:travell_recomendation/screens/home_screen/widgets/destination_carousel.dart';

import 'package:travell_recomendation/screens/home_screen/widgets/widgets.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/size_config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconTile> _iconTiles = List.from(iconTiles);

  List _icons = [
    FontAwesomeIcons.borderAll,
    FontAwesomeIcons.umbrellaBeach,
    FontAwesomeIcons.tree,
    FontAwesomeIcons.mountain,
    FontAwesomeIcons.fish,
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      backgroundColor: kWhite,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/nine.svg",
            color: kGreen,
            height: 30,
            width: 30,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: kGreen,
          ),
          SizedBox(
            width: defaultSize * 2,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: defaultSize * 2,
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
              child: HelpBanner(defaultSize: defaultSize),
            ),
            SizedBox(height: defaultSize * 1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(
                    defaultSize: defaultSize, title: 'Activity of your choice'),
                IconTileRow(
                  defaultSize: defaultSize,
                  icons: _icons,
                  iconTiles: _iconTiles,
                ),
              ],
            ),
            SizedBox(height: defaultSize * 1),
            ActivityCarousel(defaultSize: defaultSize),
            SizedBox(height: defaultSize * 1),
            DestinationCarousel(defaultSize: defaultSize)
          ],
        ),
      ),
    );
  }
}
