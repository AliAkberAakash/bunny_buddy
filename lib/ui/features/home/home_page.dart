import 'package:bunny_buddy/ui/features/home/widgets/line_bar_widget.dart';
import 'package:bunny_buddy/ui/features/journal/write_journal_page.dart';
import 'package:bunny_buddy/ui/utils/spacers.dart';
import 'package:bunny_buddy/ui/widgets/buttons.dart';
import 'package:bunny_buddy/utils/constants.dart';
import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
              barValue: 0.7,

            ),
            Spacer10(),
            LineBarWidget(
              title: "Health",
              barColor: light_yellow,
              barValue: 0.8,

            ),
            Expanded(
              child: Image.asset(
                AssetConstants.ic_bunny
              ),
            ),
            RoundedCornerButton(
              textColor: white,
              backgroundColor: accent,
              text: "Write summary of your day",
              borderRadius: 50,
              onClick: (){
                Get.to(WriteJournalPage());
              },
            ),
            Spacer20(),
          ],
        ),
      ),
    );
  }
}
