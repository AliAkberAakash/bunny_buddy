import 'dart:convert';

SentimentResponse sentimentResponseFromJson(String str) => SentimentResponse.fromJson(json.decode(str));

String sentimentResponseToJson(SentimentResponse data) => json.encode(data.toJson());

class SentimentResponse {
  SentimentResponse({
    this.sentiment,
  });

  Sentiment sentiment;

  factory SentimentResponse.fromJson(Map<String, dynamic> json) => SentimentResponse(
    sentiment: Sentiment.fromJson(json["sentiment"]),
  );

  Map<String, dynamic> toJson() => {
    "sentiment": sentiment.toJson(),
  };
}

class Sentiment {
  Sentiment({
    this.negative,
    this.neutral,
    this.positive,
  });

  double negative;
  double neutral;
  double positive;

  factory Sentiment.fromJson(Map<String, dynamic> json) => Sentiment(
    negative: json["negative"].toDouble(),
    neutral: json["neutral"].toDouble(),
    positive: json["positive"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "negative": negative,
    "neutral": neutral,
    "positive": positive,
  };
}