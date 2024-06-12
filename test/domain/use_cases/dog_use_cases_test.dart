import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:app_flutter_testing/domain/dog/use_cases/dog_use_cases.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late DogUseCases dogUseCases;
  late MockDogRepository mockDogRepository;

  setUp(() {
    mockDogRepository = MockDogRepository();
    dogUseCases = DogUseCases(dogRepository: mockDogRepository);
  });

  const testDogDetail = DogEntity(
      message: "https://images.dog.ceo/breeds/terrier-fox/n02095314_2876.jpg",
      status: 'success');
  test('should get random dog', () async {
    //* se genera el caso de prueba, en este caso se simula la respuesta de la petición
    when(mockDogRepository.getRandomDog())
        .thenAnswer((_) async => const Right(testDogDetail));
    //* se ejecuta el caso de prueba
    final result = await dogUseCases.getRandomDog();
    //* se verifica que se haya llamado al método getRandomDog del repositorio
    expect(result, const Right(testDogDetail));
  });
}
