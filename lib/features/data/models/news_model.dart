class NewsModel {
  final String title;
  final String description;
  final String imageUrl;

  NewsModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'] ?? 'No Title Available',
      description: json['description'] ?? 'No Description Available',
      imageUrl: (json['urlToImage'] != null &&
              json['urlToImage'].toString().isNotEmpty)
          ? json['urlToImage']
          : 'https://images.unsplash.com/photo-1504711434969-e33886168f5c?q=80&w=800&auto=format&fit=crop',
    );
  }
}
