import 'package:app_flutter_testing/data/dog/data_sources/remote_data_sources.dart';
import 'package:app_flutter_testing/domain/dog/repositories/dog_repositorty.dart';
import 'package:app_flutter_testing/presentation/home/vm/home_view_model.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    DogRepository,
    DogRemoteDataSource,
    HomeViewModel
  ],
  customMocks: [
    MockSpec<Dio>(as: #MockDio),
  ],
)
void main() {}
