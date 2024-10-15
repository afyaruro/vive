import 'package:flutter/material.dart';
import 'package:vive/ui/pages/ExploreScreen.dart';
import 'package:vive/ui/pages/HomeScreen.dart';
import 'package:vive/ui/pages/ProfileScreen.dart';
import 'package:vive/utils/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    ExploreScreen(),
    ProfileScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bgPrincipal(),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 153, 153, 153)
                        .withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildMenuItem(
                        icon: Icons.forum,
                        label: 'Grupos',
                        index: 0),
                    _buildMenuItem(
                        icon: Icons.search,
                        label: 'Explorar',
                        index: 1),
                    _buildMenuItem(
                        icon: Icons.person,
                        label: 'Perfil',
                        index: 2),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      {required IconData icon,
      required String label,
      required int index}) {
    bool isSelected = _currentIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Container(
          color: isSelected
              ? const Color.fromARGB(255, 255, 255, 255)
              : Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),

              Icon(icon, color: isSelected ? primaryColor() : const Color.fromARGB(255, 255, 255, 255),),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: isSelected
                      ? primaryColor()
                      : const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}