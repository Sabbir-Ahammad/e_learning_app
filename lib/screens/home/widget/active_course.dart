import 'package:e_learning_app/constraints/color.dart';
import 'package:e_learning_app/screens/home/widget/category_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(children: [
          CategoryTitle('Currently Active', 'view all'),
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(
                color: kFontLight.withOpacity(0.3),
                width: 1
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/process.png',
                      width: 60,),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Banking theory',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kFont
                        ),),
                        Text('2 Lesson Left',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kFontLight
                        ),)
                      ],
                    )
                  ],
                ),
                CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 5.0,
                  percent: 0.61,
                  center: Text('61%',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  progressColor: kAccent,
                  )
                  
              ],
            ),
          )
        ]),
      ),
    );
  }
}