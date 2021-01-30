import 'package:bunny_buddy/ui/utils/spacers.dart';
import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineBarWidget extends StatelessWidget {

  final String title;
  final TextStyle style;
  final Color barColor;
  final double barValue;
  static const defaultStyle = TextStyle(
    color: light_grey,
    fontSize: 18,
  );

  const LineBarWidget({
    this.title="",
    this.style = defaultStyle,
    this.barColor = light_green,
    this.barValue = 0,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: style,
        ),
        Spacer10(),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: LinearProgressIndicator(
            minHeight: 15,
            value: barValue,
            backgroundColor: light_grey,
            valueColor: AlwaysStoppedAnimation(barColor),
          ),
        )
      ],
    );
  }
}
