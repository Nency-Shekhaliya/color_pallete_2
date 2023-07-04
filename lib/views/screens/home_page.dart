import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/theme_provider.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(letterSpacing: 6),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          const SizedBox(
            width: 40,
          ),
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
              print("change");
            },
            icon: const Icon(Icons.light_mode),
          ),
        ],
      ),
    );
  }
}
