import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_hotel/presentation/bloc/rooms_cubit.dart';
import 'package:smart_hotel/presentation/screens/main_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => BookedRoomsCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}
