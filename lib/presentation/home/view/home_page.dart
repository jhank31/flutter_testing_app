import 'package:app_flutter_testing/presentation/home/view_model/home_view_model.dart';
import 'package:app_flutter_testing/utils/size_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final Dio? httpClient;
  const HomePage({super.key, this.httpClient});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: screenSize(context, 'width', 1),
            height: screenSize(context, 'height', 1),
            child: Center(
              child: Consumer<HomeViewModel>(builder: (context, homeViewModel, _) {
                if (homeViewModel.isLoading) {
                  return const CircularProgressIndicator();
                } else if (homeViewModel.randomDog != null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: screenSize(context, 'width', 0.7),
                            height: screenSize(context, 'height', 0.3),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  key: const Key('image_random_dogs'),
                                  homeViewModel.randomDog!.message!,
                                  fit: BoxFit.cover,
                                ))),
                                const SizedBox(height: 20),
                    ElevatedButton.icon(
                      key: const Key('change_dog_button'),
                        onPressed: () async {
                          homeViewModel.getRandomDog();
                        }, label: const Text('Cambiar perro')),
                      ],
                    ),
                  );
                } else {
                  return const Text('No hay perro');
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}
