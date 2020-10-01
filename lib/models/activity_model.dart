class Activity {
  final String frontImage;
  final String name;
  final String description;
  final List<String> imageUrls;
  final List<String> workingHours;
  final int rating;

  Activity(
      {this.frontImage,
      this.name,
      this.description,
      this.imageUrls,
      this.workingHours,
      this.rating});
}
