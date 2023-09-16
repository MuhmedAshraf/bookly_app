import 'package:bookly_app/Core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../model/BookModelTest.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewsedBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}