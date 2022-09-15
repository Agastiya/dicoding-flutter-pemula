import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:submission/const/colors.dart';
import 'package:submission/pages/home.dart';
import 'package:submission/pages/booking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Cleaning Application',
      theme: ThemeData(
        scaffoldBackgroundColor: black,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppPageState createState() {
    return _MyAppPageState();
  }
}

class _MyAppPageState extends State<MyAppPage> {
  int _selectedMenu = 0;
  final List<Widget> _items = [
    const HomeScreen(),
    const BookingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: _selectedMenu,
          children: _items,
        ),
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _bottomNav() {
    return Container(
      decoration: const BoxDecoration(
        color: blackGrey,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
            backgroundColor: blackGrey,
            elevation: 0,
            iconSize: 25,
            selectedItemColor: primaryOrange,
            unselectedIconTheme: const IconThemeData(color: whiteGrey),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.today),
                label: 'Booking',
              ),
            ],
            currentIndex: _selectedMenu,
            onTap: _onTapMenu),
      ),
    );
  }

  void _onTapMenu(int index) {
    _selectedMenu = index;
    setState(() {});
  }
}
