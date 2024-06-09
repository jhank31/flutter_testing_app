import 'package:app_flutter_testing/infreastructure/dog_services/dog_services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  final dio = Dio();
  final adapter = DioAdapter(dio: dio);

    test('returns a dog image', () async {
      const dogImageUrl = 'https://images.dog.ceo/breeds/dog1.jpg';

      dio.httpClientAdapter = adapter;
      adapter.onGet(
        'https://dog.ceo/api/breeds/image/random',
        (request) => request.reply(200, {'message': dogImageUrl, 'status': 'success'}),
      );

      final dogApi = DogServices();
      final fetchedImageUrl = await dogApi.getRandomDog(httpClient: dio);
      expect(fetchedImageUrl!.message, equals(dogImageUrl));
    });
  
}
