import 'package:bunny_buddy/data/models/sentiment_response.dart';

import '../../models/message_response.dart';

abstract class RemoteDataSource {
  /// Calls [BASE_URL]
  ///
  /// returns a [MessageResponse] on success
  Future<SentimentResponse> analyzeSentiment(String text);
}