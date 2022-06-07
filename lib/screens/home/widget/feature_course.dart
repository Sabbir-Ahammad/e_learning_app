import 'package:e_learning_app/models/course.dart';
import 'package:e_learning_app/screens/home/widget/course_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'category_title.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of week', 'View all'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: courseList.length,
              itemBuilder: (context, index) =>
              CourseItem(courseList[index]), 
              separatorBuilder: 
              (context, index) => SizedBox(width: 15,),
              ),
          )
        ],
      ),
    );
  }
}