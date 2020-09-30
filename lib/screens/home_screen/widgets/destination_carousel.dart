import 'package:flutter/material.dart';
import 'package:travell_recomendation/data/data.dart';
import 'package:travell_recomendation/models/models.dart';
import 'package:travell_recomendation/screens/destination_screen/destination_screen.dart';
import 'package:travell_recomendation/screens/home_screen/widgets/widgets.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          defaultSize: defaultSize,
          title: "Popular place",
        ),
        SizedBox(height: defaultSize * 2),
        Container(
          height: defaultSize * 15,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (context, index) {
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          DestinationScreen(destination: destination),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    width: defaultSize * 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Hero(
                          tag: destination.imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              height: defaultSize * 20,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                destination.imageUrl,
                              ),
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
                              SizedBox(
                                height: defaultSize * 0.5,
                              ),
                              Text(
                                destination.city,
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
