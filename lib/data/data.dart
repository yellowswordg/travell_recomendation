import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travell_recomendation/models/models.dart';

final alushtaCityBeach = Activity(
  name: "City Beach",
  frontImage: "assets/images/alushta/alushta_city_beach.jpg",
  description:
      "The beach at the Alushta embankment is a kind of continuation of the Central Beach, the main difference from which is the presence of large breakwaters. Breakwaters, in turn, divide the beach into small isolated zones.",
  rating: 3,
  imageUrls: [
    "assets/images/alushta/alushta_city_beach.jpg",
    "assets/images/alushta/alushta_city_beach_01.jpg",
    "assets/images/alushta/alushta_city_beach_02.jpg"
  ],
  workingHours: ["6:00 am", "11:00 pm"],
);
final alushtaPark = Activity(
  name: "Alushta Park",
  frontImage: "assets/images/alushta_park.jpg",
  description:
      "One of the most beloved attractions of the city of Alushta, among the townspeople and tourists, by right, can be considered the Primorsky Park. It is here, in a relatively small area, that the greenest and least built-up part of the city is located.",
  rating: 2,
  imageUrls: ["assets/images/alushta_park.jpg"],
  workingHours: ["6:00 am", "11:00 pm"],
);

final sevastopalBlueLagon = Activity(
  name: "Blue Lagone Beach",
  frontImage: "assets/images/sevastopol_blue_lagon.jpg",
  description:
      "The beach at the Alushta embankment is a kind of continuation of the Central Beach, the main difference from which is the presence of large breakwaters. Breakwaters, in turn, divide the beach into small isolated zones.",
  rating: 4,
  imageUrls: ["assets/images/sevastopol_blue_lagon.jpg"],
  workingHours: ["6:00 am", "11:00 pm"],
);
final sevastopalPark = Activity(
  name: "Sevastopol Park",
  frontImage: "assets/images/sevastopol_park.jpg",
  description:
      "The Blue Bay beach in Sevastopol is rightfully considered one of the best in the city, although the beach is not municipal, but thousands of tourists visit it every year. Every year the infrastructure of the beach develops and improves, but it is still impossible to call it well-equipped.",
  rating: 3,
  imageUrls: ["assets/images/sevastopol_park.jpg"],
  workingHours: ["6:00 am", "11:00 pm"],
);
final alushtaRotunda = Activity(
  name: "Rotunda",
  frontImage: "assets/images/alushta/alushta_rotunda.jpg",
  description:
      "A snow-white rotunda with six columns and the inscription Alushta-resort appeared on the Black Sea coast in 1951, when the city was being landscaped in a difficult post-war period. Located on the embankment, it serves as a landmark for meetings and a place from which tourists usually begin to familiarize themselves with the resort.",
  rating: 5,
  imageUrls: ['assets/images/alushta/alushta_rotunda.jpg'],
  workingHours: ["6:00 am", "11:00 pm"],
);
final alushtaAluston = Activity(
  name: "Aluston",
  frontImage: "assets/images/alushta/alushta_aluston.jpg",
  description:
      "Today, from the fortress Aluston, erected in the 6th century, one tower and part of the adjoining wall have survived. The fortress was built at the direction of the Byzantine emperor Justinian I back in the 6th century. Perfectly fortified Aluston saved more than once ...",
  rating: 5,
  imageUrls: ['assets/images/alushta/alushta_aluston.jpg'],
  workingHours: ["6:00 am", "11:00 pm"],
);
final bahchisaraiHanPalace = Activity(
  name: "Han Palace",
  frontImage: "assets/images/bahchisarai_han_palace.jpg",
  description:
      "City ​​in Crimea. The administrative center of the Bakhchisarai district, which is part of the Republic of Crimea according to the administrative-territorial structure of Russia since 2014",
  rating: 4,
  imageUrls: ["assets/images/bahchisarai_han_palace.jpg"],
  workingHours: ["6:00 am", "11:00 pm"],
);

final alushta = Destination(
  id: 1,
  city: "Alushta",
  description: "A beautifull subburb sity in Crimea",
  imageUrl: "assets/images/alushta.jpg",
  activities: [alushtaCityBeach, alushtaPark, alushtaRotunda, alushtaAluston],
);
final sevastopol = Destination(
  id: 2,
  city: "Sevastopol",
  description: "A beautifull subburb sity in Crimea",
  imageUrl: "assets/images/sevastopol.jpg",
  activities: [sevastopalBlueLagon, sevastopalPark],
);
final bahchisarai = Destination(
  id: 2,
  city: "Bahchisarai",
  description: "A beautifull hill sity in Crimea",
  imageUrl: "assets/images/bahchisarai.jpg",
  activities: [bahchisaraiHanPalace],
);
final List<Destination> destinations = [sevastopol, bahchisarai, alushta];

List<IconTile> iconTiles = [
  IconTile(icon: FontAwesomeIcons.borderAll, lable: 'All'),
  IconTile(icon: FontAwesomeIcons.umbrellaBeach, lable: 'Beach'),
  IconTile(icon: FontAwesomeIcons.tree, lable: 'Forest'),
  IconTile(icon: FontAwesomeIcons.mountain, lable: 'Mountain'),
  IconTile(icon: FontAwesomeIcons.fish, lable: 'FishingsW'),
];
final activityTop = [
  alushtaCityBeach,
  alushtaPark,
  sevastopalBlueLagon,
  sevastopalPark,
  bahchisaraiHanPalace,
  alushtaRotunda,
  alushtaAluston,
];
