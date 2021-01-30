import 'package:bunny_buddy/ui/features/home/widgets/line_bar_widget.dart';
import 'package:bunny_buddy/ui/utils/spacers.dart';
import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_dark,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            Spacer50(),
            LineBarWidget(
              title: "Energy",

            ),
            Spacer10(),
            LineBarWidget(
              title: "Health",
              barColor: light_yellow,

            )
          ],
        ),
      ),
    );
  }
}
