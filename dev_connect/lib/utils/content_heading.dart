import '../styles/text_styles.dart';
import 'package:flutter/material.dart';

class ContentHeadingWidget extends StatelessWidget {
  final String heading;
  ContentHeadingWidget(this.heading);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Text(
        heading,
        style: headingOneTextStyle,
      ),
    );
  }
}
