import 'dart:convert';

import 'package:bunny_buddy/core/network/api_base_helper.dart';
import 'package:bunny_buddy/data/models/sentiment_response.dart';
import 'package:bunny_buddy/utils/constants.dart';
import 'remote_datasource.dart';
import '../../models/message_response.dart';

class RemoteDataSourceImpl extends RemoteDataSource{

  final ApiBaseHelper helper;

  RemoteDataSourceImpl({this.helper});

  @override
  Future<SentimentResponse> analyzeSentiment(String text) async{
    var response = await helper.post(
      NetworkConstants.analyze_sentiment, {
        "text":text,
        "api_key":DefaultValue.API_KEY
    });

    return SentimentResponse.fromJson(jsonDecode(response.data));

  }

}