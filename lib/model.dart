class NewsApiModel {
  String title, imageUrl, content, description;

  NewsApiModel(
      {required this.title,
      required this.description,
      required this.content,
      required this.imageUrl});

  factory NewsApiModel.fromJson(Map<String, dynamic> jsonData) {
    return NewsApiModel(
      title: jsonData['title'],
      description: jsonData['description'],
      content: jsonData['content'],
      imageUrl: jsonData['urlToImage'],
    );
  }
}
