import 'package:bookly/Features/home/Data/book_model/book_model.dart';
import 'package:bookly/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookly/core/utils/web_services.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  //Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices _apiServices;

  HomeRemoteDataSourceImpl({required ApiServices apiServices})
      : _apiServices = apiServices;

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    final data = await _apiServices.get(
      endPoint: 'volumes?q=programming&filtering=free-ebooks',
    );
    //! recheck this later
    return getBookList(data);
  }

  List<BookModel> getBookList(Map<String, dynamic> data) {
    final unMappedbooksList = data['items'] as List<Map<String, dynamic>>;
    return unMappedbooksList
        .map((umMappedBook) => BookModel.fromJson(umMappedBook))
        .toList();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
