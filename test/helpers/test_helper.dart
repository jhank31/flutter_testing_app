import 'package:app_flutter_testing/data/dog/data_sources/remote_data_sources.dart';
import 'package:app_flutter_testing/domain/dog/repositories/dog_repositorty.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    DogRepository,
    DogRemoteDataSource,
  ],
  customMocks: [
    MockSpec<Dio>(as: #MockDio),
  ],
)
void main() {}
