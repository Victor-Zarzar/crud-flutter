import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void openNoteBox() {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(content: TextField()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notes")),
      floatingActionButton: FloatingActionButton(
          onPressed: openNoteBox, child: const Icon(Icons.add)),
    );
  }
}
