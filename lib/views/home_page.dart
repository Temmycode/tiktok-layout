import 'package:flutter/material.dart';
import 'package:tiktok/utils/helpers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => navigationIndex = index),
        currentIndex: navigationIndex,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
        unselectedItemColor: Colors.white54,
        unselectedLabelStyle:
            const TextStyle(color: Colors.white54, fontSize: 10),
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: navigationIndex == 0
                ? const Icon(Icons.home)
                : const Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: navigationIndex == 1
                ? const Icon(Icons.people)
                : const Icon(Icons.people_outline),
            label: "Friends",
          ),
          const BottomNavigationBarItem(
            icon: Center(
              child: Icon(Icons.add_circle),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: navigationIndex == 3
                ? const Icon(Icons.inbox)
                : const Icon(Icons.inbox_outlined),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: navigationIndex == 4
                ? const Icon(Icons.person)
                : const Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
