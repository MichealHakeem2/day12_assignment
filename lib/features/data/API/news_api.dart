import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class NewsApi {
  static const String _apiKey = 'df1b694020514f4b8349d123bec2de09';

  static Future<List<NewsModel>> fetchNews() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$_apiKey');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'] ?? [];

      return articles
          .where((item) =>
              item['title'] != null &&
              item['title'] != '[Removed]' &&
              item['title'].toString().trim().isNotEmpty)
          .map((item) => NewsModel.fromJson(item))
          .toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
