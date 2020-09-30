import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/utils/constants.dart';

// TODO: toggle buttons will be available when Bloc implementes
class IconTileRow extends StatelessWidget {
  const IconTileRow({
    Key key,
    @required this.defaultSize,
    @required List icons,
    @required List<IconTile> iconTiles,
  })  : _icons = icons,
        _iconTiles = iconTiles,
        super(key: key);

  final double defaultSize;
  final List _icons;
  final List<IconTile> _iconTiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize * 10,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(_icons.length, (index) {
            print(_iconTiles.length);
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(
                  left: defaultSize * 2,
                  top: defaultSize,
                  bottom: defaultSize,
                ),
                width: defaultSize * 8,
                decoration: BoxDecoration(
                  color: 0 == index ? kIconsCarouselGreen : kIconsCarouselGray,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      _icons[index],
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: defaultSize,
                    ),
                    // Text(
                    //   _icons[index][1],
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: defaultSize * 1.2,
                    //   ),
                    // )
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
