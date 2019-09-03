import 'package:flutter/material.dart';
import '../image_asset.dart';
import '../styles/text_styles.dart';
import '../styles/colors.dart';
import '../utils/content_heading.dart';
import '../utils/popular_with_friends_course.dart';
import '../model/last_course_studied.dart';
import '../hyperlink.dart';
import '../quiz/third_home_screen.dart';

class SecondHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
                Container(color: Colors.grey.withOpacity(0.5)),
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
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                text: "NEW COURSE",
                                style: newCourseTextStyle,
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(
                                  text: 'Marshall: JavaScript Made Simple',
                                  style: newCourseNameTextStyle),
                            ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: null,
                            child: Container(
                              // Container should have a padding
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 36, vertical: 12),
                              decoration: BoxDecoration(
                                gradient: appGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              child: HyperLink(
                                'https://www.w3schools.com/js/default.asp',
                                'View',
                              ),
                            ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ContentHeadingWidget(
                    'Popular With Friends',
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        for (var i = 0; i < popularWithFriends.length; i++)
                          PopularCoursesWidget(
                            imagePath: popularWithFriends[i],
                          )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // ContentHeadingWidget(
                  //   heading: 'Continue Reading',
                  // ),
                  // ================Tetiary screen========================
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: InkWell(
                      child: Text(
                        'Try This Quiz!',
                      ),
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdHomeScreen()),
                        ),
                      },
                    ),
                  ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                        gradient: appGradient,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                child: Image.asset(
                                  lastStudiedCourses[0].imagePath,
                                  height: screenHeight * 0.13,
                                  width: 65,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 8,
                                right: 8,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child:
                                      Icon(Icons.play_arrow, color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: lastStudiedCourses[0].name,
                                    style: headingTwoTextStyle.copyWith(
                                        color: Colors.white, fontSize: 23)),
                                TextSpan(text: '\n'),
                                TextSpan(
                                    text:
                                        "${lastStudiedCourses[0].hoursStudied} hours study",
                                    style: bodyTextStyle.copyWith(
                                        color: Colors.white,
                                        fontSize: 18,
                                        height: 1.2)),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
