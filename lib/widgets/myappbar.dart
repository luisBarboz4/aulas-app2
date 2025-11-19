import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});  // Garanta que tenha const aqui
  // ... resto do código
}

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Meu AppBar'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }
