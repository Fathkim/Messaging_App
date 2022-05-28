import 'package:flutter/material.dart';
import 'package:messaging_app/people/peopleScreen.dart';
import 'package:messaging_app/screens/welcome/welcome_screen.dart';
import 'package:messaging_app/profile/profil.dart';
import 'package:messaging_app/screens/chats/chats_screen.dart';
import 'package:messaging_app/Calls/callScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1;

  Widget body(int index) {
    switch (index) {
      case 0:
        return const ChatsScreen();
        break;
      case 1:
        return PeopleScreen();
        break;
      case 2:
        return CallsScreen();
        break;
      case 3:
        return const ProfileScreen();
        break;
      default:
        return WelcomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage("asset/images/fathan.png"),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
