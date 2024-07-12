import 'package:bookly/Features/home/Domain/Repos/home_repostory.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/Errors/failure.dart';
import '../Entities/book_entity.dart';

// for every use case there was aclass that sepretalyy handles this
class FetchFeaturedBooksUsecase extends UseCase<List<BookEntity>, NoParamter> {
  final HomeRepo _homeRepo;

  FetchFeaturedBooksUsecase({required HomeRepo homeRepo})
      : _homeRepo = homeRepo;

  @override
  Future<Either<Failure, List<BookEntity>>> excute(
      [NoParamter? paramter]) async {
    // in case there was an permission needed to be checked
    // before retrieving Data for user
    // in this case , we should handle appropriate permissions in this class
    // before going to next step

    return await _homeRepo.fetchFeaturedBooks();
  }
}
