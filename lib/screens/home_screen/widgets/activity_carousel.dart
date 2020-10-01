import 'package:flutter/material.dart';
import 'package:travell_recomendation/data/data.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/screens/activity_screen/activity_screen.dart';
import 'package:travell_recomendation/screens/home_screen/widgets/widgets.dart';
import 'package:travell_recomendation/utils/helpers.dart';

class ActivityCarousel extends StatelessWidget {
  const ActivityCarousel({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          defaultSize: defaultSize,
          title: "Top Activity Pick",
        ),
        SizedBox(height: defaultSize * 2),
        Container(
          height: defaultSize * 20,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemCount: activityTop.length,
            itemBuilder: (context, index) {
              Activity activity = activityTop[index];
              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ActivityScreen(
                    activity: activity,
                  ),
                )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    width: defaultSize * 16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            height: defaultSize * 20,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              activity.frontImage,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned(
                          bottom: defaultSize * 4,
                          left: defaultSize,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildRatingStars(activity.rating),
                              SizedBox(
                                height: defaultSize * 0.5,
                              ),
                              Text(
                                activity.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
