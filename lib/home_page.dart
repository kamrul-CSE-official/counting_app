import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Center(
        child: Text(
          "Bismillah: $number",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.purple,
            heroTag: "increment",
            child: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              setState(() {
                number++;
              });
            },
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            heroTag: "decrement",
            child: Icon(Icons.remove, color: Colors.white),
            onPressed: () {
              setState(() {
                number--;
              });
            },
          ),
        ],
      ),
    );
  }
}
