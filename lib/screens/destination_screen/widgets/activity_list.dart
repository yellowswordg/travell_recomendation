import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/utils/constants.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({
    Key key,
    @required this.defaultSize,
    @required this.destination,
  }) : super(key: key);

  final double defaultSize;
  final Destination destination;

  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(
      stars,
      style: TextStyle(fontSize: defaultSize * 1.2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: defaultSize, bottom: defaultSize),
        itemCount: destination.activities.length,
        itemBuilder: (context, index) {
          Activity activity = destination.activities[index];
          return Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                height: defaultSize * 15,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20.0,
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(130.0, 20.0, 20.0, 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 120.0,
                            child: Text(
                              activity.name,
                              style: TextStyle(fontSize: 18.0),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          _buildRatingStars(activity.rating)
                        ],
                      ),
                      SizedBox(
                        height: defaultSize * 0.5,
                      ),
                      Text(
                        activity.description,
                        style: TextStyle(fontSize: 14.0, color: kGrey),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: defaultSize * 1.3,
                right: defaultSize * 4,
                child: Text(
                  'Show More',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 20,
                top: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    width: 120.0,
                    image: AssetImage(
                      activity.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
