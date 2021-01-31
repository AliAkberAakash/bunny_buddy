import 'package:bunny_buddy/data/models/sentiment_response.dart';
import 'package:flutter/material.dart';

class SentimentAnalysisPage extends StatelessWidget {

  final SentimentResponse response;

  const SentimentAnalysisPage({Key key, this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(response.toString());

    return Container();
  }
}
