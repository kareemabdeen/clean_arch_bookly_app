import 'package:dartz/dartz.dart';

import '../../../../core/Errors/failure.dart';

abstract class UseCase<Type, parameter> {
  Future<Either<Failure, Type>> excute([parameter? paramter]);
}

class NoParamter {}
