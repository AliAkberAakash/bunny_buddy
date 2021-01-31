import 'dart:convert';
import 'package:http/http.dart' as http;

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
    var response = await http.post(
      NetworkConstants.BASE_URL+NetworkConstants.analyze_sentiment,
     body: {
       "text":text,
       "api_key":DefaultValue.API_KEY,
     }
    );

    return SentimentResponse.fromJson(jsonDecode(response.body));

  }

}