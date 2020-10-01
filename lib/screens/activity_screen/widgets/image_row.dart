import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({
    Key key,
    @required this.defaultSize,
    @required this.activity,
  }) : super(key: key);

  final double defaultSize;
  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize * 10,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
        scrollDirection: Axis.horizontal,
        itemCount: activity.imageUrls.length,
        itemBuilder: (context, index) {
          String url = activity.imageUrls[index];
          return Padding(
            padding: EdgeInsets.only(right: defaultSize),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                // onTap: () => _showMyDialog(context, url, defaultSize),
                child: Image(
                  width: defaultSize * 10,
                  image: AssetImage(url),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
