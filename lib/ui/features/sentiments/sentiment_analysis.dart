import 'package:bunny_buddy/data/models/sentiment_response.dart';
import 'package:bunny_buddy/ui/utils/spacers.dart';
import 'package:bunny_buddy/utils/constants.dart';
import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SentimentAnalysisPage extends StatelessWidget {

  final SentimentResponse response;

  const SentimentAnalysisPage({Key key, this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(response.toString());

    return Scaffold(
      backgroundColor: primary_dark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: Image.asset(
              AssetConstants.ic_happy,
              height: 70.h,
              width: 70.h,
            ),
            title: Text(
              "You are ${response.sentiment.positive*100}% Happy today",
              style: GoogleFonts.sairaSemiCondensed(
                color: white,
                fontSize: 18.ssp
              ),
            ),
          ),
          Spacer20(),
          ListTile(
            leading: Image.asset(
              AssetConstants.ic_neutral,
              height: 70.h,
              width: 70.h,
            ),
            title: Text(
              "You are ${response.sentiment.neutral*100}% Neutral today",
              style: GoogleFonts.sairaSemiCondensed(
                  color: white,
                  fontSize: 18.ssp
              ),
            ),
          ),
          Spacer20(),
          ListTile(
            leading: Image.asset(
              AssetConstants.ic_sad,
              height: 70.h,
              width: 70.h,
            ),
            title: Text(
              "You are ${response.sentiment.negative*100}% Sad today",
              style: GoogleFonts.sairaSemiCondensed(
                  color: white,
                  fontSize: 18.ssp
              ),
            ),
          )
        ],
      ),
    );
  }
}
