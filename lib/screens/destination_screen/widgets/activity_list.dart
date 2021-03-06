import 'package:flutter/material.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/screens/activity_screen/activity_screen.dart';
import 'package:travell_recomendation/utils/constants.dart';
import 'package:travell_recomendation/utils/helpers.dart';
import 'package:travell_recomendation/widgets/star_row.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({
    Key key,
    @required this.defaultSize,
    @required this.destination,
  }) : super(key: key);

  final double defaultSize;
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: defaultSize, bottom: defaultSize),
        itemCount: destination.activities.length,
        itemBuilder: (context, index) {
          Activity activity = destination.activities[index];
          return GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ActivityScreen(
                  activity: activity,
                ),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 5.0, 20.0, 5.0),
                  height: defaultSize * 15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(130.0, 20.0, 20.0, 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: defaultSize * 14.0,
                              child: Text(
                                activity.name,
                                style: TextStyle(fontSize: 18.0),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            StarRow(
                              rating: activity.rating,
                              size: 14,
                            ),
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
                        activity.frontImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
