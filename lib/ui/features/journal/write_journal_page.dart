import 'package:bunny_buddy/data/repositories/repository_impl.dart';
import 'package:bunny_buddy/di/dependency_injection.dart';
import 'package:bunny_buddy/ui/features/journal/write_journal_controller.dart';
import 'package:bunny_buddy/ui/utils/spacers.dart';
import 'package:bunny_buddy/ui/widgets/buttons.dart';
import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WriteJournalPage extends StatelessWidget {

  final _controller = WriteJournalController(repository: locator(),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_dark,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Spacer20(),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: accent,
                    width: 2
                  )
                ),
                child: TextField(
                  controller: _controller.controller,
                  maxLines: null,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "How was your day?",
                      hintStyle: TextStyle(
                        color: light_grey,
                        fontSize: 14.ssp,
                      )
                  ),
                ),
              ),
            ),
            Spacer20(),
            RoundedCornerButton(
              textColor: white,
              backgroundColor: accent,
              text: "SAVE",
              borderRadius: 50,
              onClick: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}
