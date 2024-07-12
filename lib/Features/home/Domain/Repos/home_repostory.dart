import 'package:bookly/Features/home/Domain/Entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/Errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookEntity>>> featchNewsBooks();
}
