import 'dart:convert';

import 'package:app_flutter_testing/data/dog/models/dog_model.dart';
import 'package:app_flutter_testing/domain/dog/entities/dog_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/dummy_data/json_reader.dart';

const testDogModel = DogModel(
  message: 'https://images.dog.ceo/breeds/terrier/norfolk/n02094114_1003.jpg',
  status: 'success',
);
void main() {
  group(
      'group of dog validations as',
      () {
    test('should be a class of dog entity', () {
      //* validamos que la instancia de testDogModel sea de tipo DogEntity
      expect(testDogModel, isA<DogEntity>());
    });

    test('should return a valid model from json', () {
      //* se lee el archivo json de prueba que se supone que debe retornar la api
      final Map<String, dynamic> jsonMap =
          json.decode(jsonReader('helpers/dummy_data/dog_response.json'));
      //* se convierte el json a un objeto de tipo DogModel
      final result = DogModel.fromJson(jsonMap);
      //* se valida que el objeto resultante sea igual al objeto de prueba
      expect(result, equals(testDogModel));
    });

    test('should return a json map containing the proper data', () {
      //* se convierte el objeto de prueba a un mapa de json
      final result = testDogModel.toJson();
      final expectedJson = {
        "message": "https://images.dog.ceo/breeds/terrier/norfolk/n02094114_1003.jpg",
        "status": "success"
      };
      //* se valida que el mapa de json resultante sea igual al mapa de json esperado
      expect(result, equals(expectedJson));
    });
  });
}
