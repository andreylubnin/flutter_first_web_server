class EpisodeItemModel {
  final String title;
  final double duration;
  final String imageUrl;

  EpisodeItemModel({
    required this.title,
    required this.duration,
    required this.imageUrl,
  });

  EpisodeItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        duration = map['duration'],
        imageUrl =
            'https://miro.medium.com/max/1400/1*67ehqt3-8QMT17q5ckPUSQ.jpeg';
}
