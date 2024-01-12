import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
//        navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          // Text(
          //   'Home',
          //   style: TextStyle(color: Color(0xFF2c2b2b)),
          // ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          label: "Near By",
          // title: Text(
          //   'Near By',
          //   style: TextStyle(color: Color(0xFF2c2b2b)),
          // ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: "Cart"
          // title: Text(
          //   'Cart',
          //   style: TextStyle(color: Color(0xFF2c2b2b)),
          // ),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          label:"Account"
          // title: Text(
          //   'Account',
          //   style: TextStyle(color: Color(0xFF2c2b2b)),
          // ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFfd5352),
      onTap: _onItemTapped,
    );
  }
}
