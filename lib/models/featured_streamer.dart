class FeaturedStreamer {
  String picture;
  String name;
  String gameName;
  String thumbnail;

  FeaturedStreamer({
    required this.picture,
    required this.name,
    required this.gameName,
    required this.thumbnail,
  });
}

var featuredStreamers = [
  FeaturedStreamer(
    picture: 'masayoshi.png',
    name: 'Masayoshi',
    gameName: 'Spiderman',
    thumbnail: 'spiderman.png',
  ),
  FeaturedStreamer(
    picture: 'tamara-sakki.png',
    name: 'Tamara Sakki',
    gameName: 'Fornite Pro',
    thumbnail: 'fornite-pro.png',
  ),
];
