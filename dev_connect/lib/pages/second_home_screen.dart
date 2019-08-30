import 'package:flutter/material.dart';
import '../image_asset.dart';

class SecondHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  system,
                  height: 400,
                  fit: BoxFit.fitHeight,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12),
                            child: InkWell(
                              child: Icon(Icons.menu, color: Colors.white),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
