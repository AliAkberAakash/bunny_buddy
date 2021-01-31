import 'package:bunny_buddy/data/models/sentiment_response.dart';
import 'package:bunny_buddy/data/repositories/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WriteJournalController extends GetxController{

  final Repository repository;
  final controller = TextEditingController();
  final sentimentResponse = Rx<SentimentResponse>(null);

  WriteJournalController({this.repository});

  getSentiment() async{

    final journal = controller.text.trim();

    if(journal.isNotEmpty){
      final response = await repository.analyzeSentiment(journal);
    }
  }
}