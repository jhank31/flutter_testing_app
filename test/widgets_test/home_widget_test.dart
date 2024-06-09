import 'package:app_flutter_testing/domain/dogs/model/dog_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:app_flutter_testing/presentation/home/view/home_page.dart';
import 'package:app_flutter_testing/presentation/home/view_model/home_view_model.dart';

import 'home_widget_test.mocks.dart';

@GenerateNiceMocks([MockSpec<HomeViewModel>(), MockSpec<Dio>()])
void main() {
  final mockHomeViewModel = MockHomeViewModel();
  final mockDio = MockDio();
  testWidgets('displays a dog image', (WidgetTester tester) async {
    when(mockHomeViewModel.isLoading).thenAnswer((_) => false);
    when(mockHomeViewModel.randomDog).thenAnswer(
        (_) => DogModel(message: 'https://images.dog.ceo/breeds/dog1.jpg'));
    when(mockDio.get(any)).thenAnswer((_) async => Response(
            statusCode: 200,
            requestOptions:
                RequestOptions(path: 'https://dog.ceo/api/breeds/image/random'),
            data: {
              'message': 'https://images.dog.ceo/breeds/dog1.jpg',
              'status': 'success'
            }));
    await tester.pumpWidget(
      ChangeNotifierProvider<HomeViewModel>(
        create: (_) => mockHomeViewModel,
        child: MaterialApp(
          home: HomePage(httpClient: mockDio,),
        ),
      ),
      );

    expect(find.byKey(const Key('image_random_dogs')), findsWidgets);
  });
}
