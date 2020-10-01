import 'package:flutter/cupertino.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({
    @required this.defaultSize,
    this.title,
  });

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
