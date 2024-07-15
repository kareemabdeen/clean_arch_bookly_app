class BookEntity {
  final String title;
  final num? price;
  final String? image;
  final String autherName;
  final num rating;
  final String bookId;

  BookEntity({
    required this.title,
    required this.price,
    required this.image,
    required this.autherName,
    required this.rating,
    required this.bookId,
  });
}
