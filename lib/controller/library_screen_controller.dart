import 'package:b_library/data/response/api_response.dart';
import 'package:b_library/models/book_model.dart';
import 'package:b_library/repository/library_api_repository.dart';
import 'package:flutter/cupertino.dart';

class LibraryScreenController with ChangeNotifier {
  final _myLib = LibraryAuthRepository();

  ApiResponse<BookModel> bookList = ApiResponse.loading();

  setBookList(ApiResponse<BookModel> response) {
    bookList = response;
    notifyListeners();
  }

  Future<void> fetchBookListApi() async {
    print("object");
    setBookList(ApiResponse.loading());

    _myLib.getBookList().then((value) {
      print('hELLO World');
      setBookList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setBookList(ApiResponse.error(error.toString()));
    });
  }
}
