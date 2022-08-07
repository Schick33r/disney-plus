import 'package:flutter/material.dart';

class ButtomNavigationBar extends StatelessWidget {
  const ButtomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const mickey_mouse_face = 'assets/mickey_mouse_face.jpg';

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Divider(color: Colors.white12, height: 0.5, thickness: 0.5),
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(mickey_mouse_face),
                  ),
                ),
                label: 'Profile'),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
        )
      ],
    );
  }
}
