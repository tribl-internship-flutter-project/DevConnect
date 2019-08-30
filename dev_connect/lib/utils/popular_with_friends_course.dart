import 'package:dev_connect/styles/text_styles.dart';
import 'package:flutter/material.dart';
import '../styles/text_styles.dart';

class PopularCoursesWidget extends StatelessWidget {
  final imagePath;
  const PopularCoursesWidget({Key key, @required this.imagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: Image.asset(imagePath),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: InkWell(
              onTap: null,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                elevation: 4,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Text('View',
                      textAlign: TextAlign.center, style: viewWhiteTextStyle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
