/*import 'package:flutter/material.dart';
import 'package:task10depi/navigation/Home_screen.dart';
import 'package:task10depi/navigation/cart_screen.dart';
import 'package:task10depi/navigation/profile_screen.dart';
import 'package:task10depi/navigation/scan_screen.dart';

class MainPage extends StatefulWidget {
  static const String routeName = 'navigate';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CartPage(),
    ScanPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: "Scan",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:task10depi/navigation/Favorites_screen.dart';
import 'package:task10depi/navigation/Home_screen.dart';
import 'package:task10depi/navigation/cart_screen.dart';
import 'package:task10depi/navigation/profile_screen.dart';
import 'package:task10depi/navigation/scan_screen.dart';

class MainPage extends StatefulWidget {
  static const String routeName = 'navigate';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CartPage(),
    ScanPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentIndex = 2; // زرار النص (Scan)
          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 28),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavIcon(Icons.home, 0),
              buildNavIcon(Icons.shopping_cart, 1),
              SizedBox(width: 40), // فراغ للزر النص
              buildNavIcon(Icons.favorite, 3),
              buildNavIcon(Icons.person, 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavIcon(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color: _currentIndex == index ? Colors.red : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}

/*class MainApp extends StatelessWidget {
  static const String routeName = 'navigate';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Cart Page")),
    Center(child: Text("Scan Page")),
    Center(child: Text("Favorites Page")),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentIndex = 2; // زرار النص
          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 28),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // زرار Home
              buildNavIcon(Icons.home, 0),
              // زرار Cart
              buildNavIcon(Icons.shopping_cart, 1),
              SizedBox(width: 40), // مساحة الزرار النص
              // زرار Favorites
              buildNavIcon(Icons.favorite, 3),
              // زرار Profile
              buildNavIcon(Icons.person, 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavIcon(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color: _currentIndex == index ? Colors.red : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}*/
