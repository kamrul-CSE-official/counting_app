import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        actions: [
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Center(
        child: Text(
          "Bismillah- $number",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          setState(() {
            number++;
          });
        },
      ),
    );
  }
}
