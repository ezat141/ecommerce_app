import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> login({ required String email, required String password});
}
