import 'package:bunny_buddy/data/models/sentiment_response.dart';
import 'package:bunny_buddy/data/repositories/repository.dart';
import 'package:bunny_buddy/ui/features/sentiments/sentiment_analysis.dart';
import 'package:bunny_buddy/ui/utils/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WriteJournalController extends GetxController{

  final Repository repository;
  final controller = TextEditingController();
  final sentimentResponse = Rx<SentimentResponse>(null);

  WriteJournalController({this.repository});

  getSentiment() async{

    showLoadingDialog();
    final journal = controller.text.trim();

    if(journal.isNotEmpty){
      try{
        final response = await repository.analyzeSentiment(journal);
        sentimentResponse.value = response;
        Get.back();
        Get.to(SentimentAnalysisPage(response: response));
      }catch(e){
        Get.back();
        print("Something went wrong!");
      }
    }
  }
}