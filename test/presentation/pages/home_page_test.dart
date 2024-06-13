import 'package:app_flutter_testing/di.dart';
import 'package:app_flutter_testing/presentation/home/view/home_page.dart';
import 'package:app_flutter_testing/presentation/home/vm/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockHomeViewModel mockHomeViewModel;
  setUpAll(() async {
    await init();
  });
  setUp(() {
    mockHomeViewModel = MockHomeViewModel();
  });

  group('home test', () {
    Widget createHomePage() {
      return ChangeNotifierProvider<HomeViewModel>.value(
          value: mockHomeViewModel,
          child: const MaterialApp(
            home: HomePage(),
          ));
    }

    testWidgets('Show circularProgressIndicator when is loading',
        (WidgetTester tester) async {
      when(mockHomeViewModel.isLoading).thenReturn(true);
      when(mockHomeViewModel.randomDog).thenReturn(null);

      await tester.pumpWidget(createHomePage());
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
    testWidgets('Home Page', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(createHomePage());

      expect(find.text('No hay perro'), findsOneWidget);
    });
  });
}
