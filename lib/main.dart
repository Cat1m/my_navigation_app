import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Screen0(changeScreen: changeScreen),
      Screen1(changeScreen: changeScreen),
      Screen2(changeScreen: changeScreen),
      Screen3(changeScreen: changeScreen),
      const Screen4(),
      Screen5(changeScreen: changeScreen),
      const Screen6(),
      const Screen7(),
      const Screen9(),
      Screen10(changeScreen: changeScreen),
    ];

    if (_currentIndex == 8) {
      return screens[8];
    } else if (_currentIndex == 9) {
      return screens[9];
    }

    int bottomNavIndex = (_currentIndex < 3) ? _currentIndex : 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class Screen0 extends StatelessWidget {
  final Function changeScreen;

  const Screen0({Key? key, required this.changeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Screen 0'),
          ElevatedButton(
            onPressed: () => changeScreen(3),
            child: const Text('Go to Screen 3'),
          ),
          ElevatedButton(
            onPressed: () {
              changeScreen(8);
            },
            child: const Text('go to screen9'),
          ),
          ElevatedButton(
            onPressed: () {
              changeScreen(9); // Đi đến Screen10
            },
            child: const Text('Go to Screen 10'),
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Function changeScreen;

  const Screen1({Key? key, required this.changeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Screen 1'),
          ElevatedButton(
            onPressed: () => changeScreen(3),
            child: const Text('Go to Screen 3'),
          ),
          ElevatedButton(
            onPressed: () => changeScreen(4),
            child: const Text('Go to Screen 4'),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  final Function changeScreen;

  const Screen2({Key? key, required this.changeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Screen 2'),
          ElevatedButton(
            onPressed: () => changeScreen(5),
            child: const Text('Go to Screen 5'),
          ),
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  final Function changeScreen;

  const Screen3({Key? key, required this.changeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Screen 3'),
          ElevatedButton(
            onPressed: () => changeScreen(4),
            child: const Text('Go to Screen 4'),
          ),
        ],
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 4'),
    );
  }
}

class Screen5 extends StatelessWidget {
  final Function changeScreen;

  const Screen5({Key? key, required this.changeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Screen 5'),
          ElevatedButton(
            onPressed: () => changeScreen(6),
            child: const Text('Go to Screen 6'),
          ),
          ElevatedButton(
            onPressed: () => changeScreen(3),
            child: const Text('Go to Screen 3'),
          ),
        ],
      ),
    );
  }
}

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 6'),
    );
  }
}

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 7'),
    );
  }
}

class Screen9 extends StatelessWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Không có AppBar và BottomNavigationBar
      body: Center(
        child: Text('Screen 9'),
      ),
    );
  }
}

class Screen10 extends StatelessWidget {
  final Function changeScreen;

  const Screen10({Key? key, required this.changeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 10'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen 10'),
            ElevatedButton(
              onPressed: () {
                changeScreen(0); // Quay về Screen 0
              },
              child: const Text('Go back to Screen 0'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
        ],
        // ... (xử lý onTap và các thuộc tính khác)
      ),
    );
  }
}
