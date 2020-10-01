import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travell_recomendation/utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize * 8,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/nine.svg",
                color: kGreen,
                height: 40,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  // color: Colors.green.withOpacity(0.4),
                  width: defaultSize * 15,
                  height: defaultSize * 4,
                  child: TextField(
                    style: TextStyle(fontSize: 24),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Icon(
                  Icons.search,
                  size: defaultSize * 4,
                  color: kGreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
