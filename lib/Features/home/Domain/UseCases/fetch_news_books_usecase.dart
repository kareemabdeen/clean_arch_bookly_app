import 'package:bookly/Features/home/Domain/Entities/book_entity.dart';
import 'package:bookly/Features/home/Domain/Repos/home_repostory.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooksUseCase extends UseCase<List<BookEntity>, NoParamter> {
  final HomeRepo _homeRepo;

  FetchNewsBooksUseCase({required HomeRepo homeRepo}) : _homeRepo = homeRepo;

  @override
  Future<Either<Failure, List<BookEntity>>> excute(
      [NoParamter? paramter]) async {
    return await _homeRepo.featchNewsBooks();
  }
}
