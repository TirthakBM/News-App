import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model.dart';

Future<List<NewsApiModel>> getNews() async {
  Uri uri = Uri.parse(
      'https://newsapi.org/v2/everything?q=apple&from=2022-04-29&to=2022-04-29&sortBy=popularity&apiKey=a82ad6e64b614cbc9956b29c50d50d95');

  final response = await http.get(uri);

  if (response.statusCode == 200 || response.statusCode == 201) {
    Map<String, dynamic> map = json.decode(response.body);

    List _articalsList = map['articles'];

    List<NewsApiModel> newsList = _articalsList
        .map((jsonData) => NewsApiModel.fromJson(jsonData))
        .toList();

    print(_articalsList);

    return newsList;
  } else {
    print("error");
    return [];
  }
}
