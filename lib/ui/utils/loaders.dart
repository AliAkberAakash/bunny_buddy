import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showLoadingDialog(){
  Get.dialog(
    WillPopScope(
      child: Center(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      onWillPop: () async{
        return false;
      },
    ),
    barrierDismissible: false,
  );
}

/*void showLogoutDialog({Function onAccept, Function onCancel}){
  Get.dialog(
    WillPopScope(
      child: Center(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Text(
                  "Are you sure you want to logout?",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        onCancel();
                      },
                      child: Text(
                        "No"
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        onAccept();
                      },
                      child: Text(
                        "Yes"
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async{
        return false;
      },
    ),
  );
}*/

Future<void> showLogoutDialog(BuildContext context, String message, {Function onAccept, Function onCancel}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              onCancel();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "No",
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              onAccept();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Yes"
              ),
            ),
          )
        ],
      );
    },
  );
}
