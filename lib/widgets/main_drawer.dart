import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectedScreen});

  final void Function(String identifier) onSelectedScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green.shade200,
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade200, Colors.green.shade400],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.fastfood, size: 36, color: Colors.white),
                const SizedBox(width: 20),
                Text(
                  'Cooking some...',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant, size: 26, color: Colors.black87),
            title: Text(
              'Meals',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black87,
                fontSize: 24,
              ),
            ),
            onTap: () {
              onSelectedScreen('meals');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 26, color: Colors.black87),
            title: Text(
              'Filters',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black87,
                fontSize: 24,
              ),
            ),
            onTap: () {
              onSelectedScreen('filters');
            },
          ),
        ],
      ),
    );
  }
}
