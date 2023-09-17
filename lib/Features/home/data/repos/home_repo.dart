import 'package:bookly_app/Core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../model/BookModel.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}