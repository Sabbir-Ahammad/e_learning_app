import 'package:e_learning_app/constraints/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmojiText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Let\s boost your\nbrain power',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: kFont
              )
            ),
            TextSpan(text: '✨',
            style: TextStyle(fontSize: 26))
          ]),
      ),
    );
  }
}