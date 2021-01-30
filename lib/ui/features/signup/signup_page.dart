import 'package:bunny_buddy/ui/utils/spacers.dart';
import 'package:bunny_buddy/ui/widgets/buttons.dart';
import 'package:bunny_buddy/ui/widgets/text_fields.dart';
import 'package:bunny_buddy/utils/constants.dart';
import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_dark,
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 200.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetConstants.ic_bg_alt),
                  fit: BoxFit.fill,
                )
            ),
            child: Text(
              "Bunny Buddy",
              style: GoogleFonts.sairaSemiCondensed(
                fontSize: 24.ssp,
                color: primary_dark,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 20, horizontal: 30
                ),
                width: double.infinity,
                color: white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UnderlinedTextField(
                      hintText: "name",
                      controller: null,
                    ),
                    Spacer20(),
                    UnderlinedTextField(
                      hintText: "email",
                      controller: null,
                    ),
                    Spacer20(),
                    UnderlinedTextField(
                      obsecure: true,
                      hintText: "password",
                      controller: null,
                    ),
                    Spacer20(),
                    UnderlinedTextField(
                      obsecure: true,
                      hintText: "confirm password",
                      controller: null,
                    ),
                    Spacer20(),
                    RoundedCornerButton(
                      text: "Signup",
                      onClick: (){

                      },
                      textColor: white,
                      backgroundColor: accent,
                      borderRadius: 100,
                    ),
                    RoundedCornerButton(
                      text: "Login",
                      onClick: (){
                        Get.back();
                      },
                      textColor: primary_dark,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
