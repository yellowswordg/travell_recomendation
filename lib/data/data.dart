import 'package:travell_recomendation/models/models.dart';

final alushtaCityBeach = Activity(
  name: "City Beach",
  imageUrl: "assets/images/alushta_city_beach.jpg",
  description:
      "The beach at the Alushta embankment is a kind of continuation of the Central Beach, the main difference from which is the presence of large breakwaters. Breakwaters, in turn, divide the beach into small isolated zones.",
  rating: 3,
  workingHours: ["6:00 am", "11:00 pm"],
);
final alushtaPark = Activity(
  name: "Alushta Park",
  imageUrl: "assets/images/alushta_park.jpg",
  description:
      "One of the most beloved attractions of the city of Alushta, among the townspeople and tourists, by right, can be considered the Primorsky Park. It is here, in a relatively small area, that the greenest and least built-up part of the city is located.",
  rating: 2,
  workingHours: ["6:00 am", "11:00 pm"],
);

final sevastopalBlueLagon = Activity(
  name: "City Beach",
  imageUrl: "assets/images/sevastopol_blue_lagon.jpg",
  description:
      "The beach at the Alushta embankment is a kind of continuation of the Central Beach, the main difference from which is the presence of large breakwaters. Breakwaters, in turn, divide the beach into small isolated zones.",
  rating: 4,
  workingHours: ["6:00 am", "11:00 pm"],
);
final sevastopalPark = Activity(
  name: "Sevastopol Park",
  imageUrl: "assets/images/sevastopol_park.jpg",
  description:
      "The Blue Bay beach in Sevastopol is rightfully considered one of the best in the city, although the beach is not municipal, but thousands of tourists visit it every year. Every year the infrastructure of the beach develops and improves, but it is still impossible to call it well-equipped.",
  rating: 3,
  workingHours: ["6:00 am", "11:00 pm"],
);

final alushta = Destination(
  id: 1,
  city: "Alushta",
  description: "A beautifull subburb sity in Crimea",
  imageUrl: "assets/images/alushta.jpg",
  activities: [alushtaCityBeach, alushtaPark],
);
final sevastopol = Destination(
  id: 1,
  city: "Sevastopol",
  description: "A beautifull subburb sity in Crimea",
  imageUrl: "assets/images/sevastopol.jpg",
  activities: [sevastopalBlueLagon, sevastopalPark],
);
final List<Destination> destinations = [sevastopol, alushta];
