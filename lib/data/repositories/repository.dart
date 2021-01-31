import 'package:bunny_buddy/data/models/sentiment_response.dart';


abstract class Repository {
  Future<SentimentResponse> analyzeSentiment(String text);
}