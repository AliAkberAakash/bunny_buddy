import 'package:bunny_buddy/utils/constants.dart';
import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_dark,
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetConstants.ic_bg),
                  fit: BoxFit.fill
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
