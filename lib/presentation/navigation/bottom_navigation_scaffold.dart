import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavScaffold extends StatelessWidget {
  const BottomNavScaffold({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _buildBottomNavItem(
            iconData: Icons.home_outlined,
            label: 'Главная',
          ),
          _buildBottomNavItem(
            iconData: Icons.star_border,
            label: 'Отбор',
          ),
          _buildBottomNavItem(
            iconData: Icons.credit_card_rounded,
            label: 'Билеты',
          ),
          _buildBottomNavItem(
            iconData: Icons.account_box_outlined,
            label: 'Кабинет',
          ),
          _buildBottomNavItem(
            iconData: Icons.shopping_bag_outlined,
            label: 'Магазин',
          ),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem({
    required IconData iconData,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label: label,
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
