import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/views/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedPageIndex = 0;

  final _pages = [
    const HomeScreen(),
    Text('sample text 2'),
    Text('sample text 3'),
    Text('sample text 4'),
  ];

  final List<Map<String, dynamic>> _items = [
    {
      'label': 'Home',
      'icon': FluentSystemIcons.ic_fluent_home_regular,
      'activeIcon': FluentSystemIcons.ic_fluent_home_filled,
    },
    {
      'label': 'Search',
      'icon': FluentSystemIcons.ic_fluent_search_regular,
      'activeIcon': FluentSystemIcons.ic_fluent_search_filled,
    },
    {
      'label': 'Tickets',
      'icon': FluentSystemIcons.ic_fluent_ticket_regular,
      'activeIcon': FluentSystemIcons.ic_fluent_ticket_filled,
    },
    {
      'label': 'Profile',
      'icon': FluentSystemIcons.ic_fluent_person_accounts_regular,
      'activeIcon': FluentSystemIcons.ic_fluent_person_accounts_filled,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFeeedf2),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedItemIndex,
        items: _navItems,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.blueGrey.shade800,
        showSelectedLabels: false,
      ),
      body: Center(
        child: _pages[_selectedPageIndex],
      ),
    );
  }

  void _selectedItemIndex(int index) {
    debugPrint('selected index is $index');
    setState(() {
      _selectedPageIndex = index;
    });
  }

  List<BottomNavigationBarItem> get _navItems {
    return _items
        .map<BottomNavigationBarItem>(
          (e) => BottomNavigationBarItem(
            icon: Icon(
              e['icon'],
            ),
            label: e['label'],
            activeIcon: Icon(e['activeIcon'],),
          ),
        )
        .toList();
  }
}
