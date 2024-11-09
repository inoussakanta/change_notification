import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'counter_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ChangeNotifier Example")),
        body: Center(
          child: Consumer<Counter>(
            builder: (context, counter, child) => Text(
              'Count: ${counter.count}',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<Counter>().increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
