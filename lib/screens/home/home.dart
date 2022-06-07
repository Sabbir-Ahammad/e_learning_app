import 'package:e_learning_app/constraints/color.dart';
import 'package:e_learning_app/screens/home/widget/active_course.dart';
import 'package:e_learning_app/screens/home/widget/category_title.dart';
import 'package:e_learning_app/screens/home/widget/course_item.dart';
import 'package:e_learning_app/screens/home/widget/emoji_text.dart';
import 'package:e_learning_app/screens/home/widget/feature_course.dart';
import 'package:e_learning_app/screens/home/widget/searchinput.dart';
import 'package:flutter/material.dart';

import '../../models/course.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [EmojiText(), SearchInput(),FeatureCourse(), ActiveCourse()],
      )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'Hello Ruize',
          style: TextStyle(fontSize: 16, color: kFontLight
        ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(color: kAccent, shape: BoxShape.circle),
              ))
          ],
        )
      ],
    );
  }
}