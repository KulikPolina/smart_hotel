import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_hotel/core/ble/ble_service.dart';
import 'package:smart_hotel/presentation/bloc/ble_bloc/room_control_bloc.dart';
import 'package:smart_hotel/presentation/bloc/room_cubit/rooms_cubit.dart';
import 'package:smart_hotel/presentation/screens/main_screen.dart';

void main() {
  final bleService = MethodChannelBleService();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BookedRoomsCubit()),
        BlocProvider(create: (_) => RoomControlBloc(bleService as BleService)),
      ],
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
