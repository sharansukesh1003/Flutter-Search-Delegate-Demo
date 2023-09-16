import 'package:flutter/material.dart';
import 'package:search_delegate_demo/custom_search_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Search Demo'),
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: const Icon(Icons.search),
            onPressed: () async {
              await showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          ),
        ),
      ),
    );
  }
}
