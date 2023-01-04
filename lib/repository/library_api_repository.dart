import 'package:b_library/data/network/base_api_service.dart';
import 'package:b_library/data/network/network_api_service.dart';
import 'package:b_library/models/book_model.dart';
import 'package:b_library/resources/app_urls.dart';

class LibraryAuthRepository {
  final BaseApiService _baseApiService = NetworkApiService();

  Future<BookModel> getBookList() async {
    try {
      dynamic reponse =
          await _baseApiService.getGetApiResponse(AppUrsl.bookApiEndPoint);
      return reponse = BookModel.fromJson(reponse);
    } catch (e) {
      throw e.toString();
    }
  }
}
