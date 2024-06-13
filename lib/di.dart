import 'package:app_flutter_testing/data/dog/data_sources/remote_data_sources.dart';
import 'package:app_flutter_testing/data/dog/repositories/dog_repository_impl.dart';
import 'package:app_flutter_testing/domain/dog/repositories/dog_repositorty.dart';
import 'package:app_flutter_testing/domain/dog/use_cases/dog_use_cases.dart';
import 'package:app_flutter_testing/presentation/home/vm/home_view_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> init() async {
  // home view model
  di.registerFactory<HomeViewModel>(() => HomeViewModel());

  // http  client
  di.registerSingleton<Dio>(Dio());
  // data sources
  di.registerLazySingleton<DogRemoteDataSource>(() => DogRemoteDataSourceImpl(client: di()));
  // repositories
  di.registerLazySingleton<DogRepository>(() => DogRepositoryImpl(dogRemoteDataSource: di()));
  // use cases
  di.registerLazySingleton(() =>  DogUseCases(dogRepository: di()));
}
