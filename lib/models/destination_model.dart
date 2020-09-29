import 'package:travell_recomendation/models/models.dart';

class Destination {
  final int id;
  final String city;
  final String imageUrl;
  final String description;
  final List<Activity> activities;

  Destination(
      {this.imageUrl, this.id, this.description, this.activities, this.city});
}
