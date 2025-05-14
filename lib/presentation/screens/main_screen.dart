import 'package:flutter/material.dart';
import 'package:smart_hotel/presentation/screens/booked_rooms_screen.dart';
import 'package:smart_hotel/presentation/screens/rooms_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPage = 0;

  List<Widget> pages = [RoomsScreen(), BookedRoomsScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentPage, 
          children: pages
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          currentIndex: currentPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.house_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
