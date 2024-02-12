import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Project 4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
          color: Colors.pink.shade400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createRow(),
              Expanded(child: createCol()),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Row createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        createContainer(
          "1",
          Colors.purple.shade200,
        ),
        createContainer("2", Colors.purple),
        createContainer("3", Colors.purple.shade200),
        createContainer("4", Colors.purple),
        createContainer("5", Colors.purple.shade200),
      ],
    );
  }

  Container createContainer(String text, Color color, {double margin = 0}) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      alignment: Alignment.center,
      width: 75,
      height: 75,
      color: color,
      child: Text(
        text,
        style: const TextStyle(fontSize: 36),
      ),
    );
  }

  Column createCol() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: createContainer("2", Colors.purple, margin: 10)),
        Expanded(
            child: createContainer("3", Colors.purple.shade200, margin: 10)),
        Expanded(child: createContainer("4", Colors.purple, margin: 10)),
        Expanded(
            child: createContainer("5", Colors.purple.shade200, margin: 10)),
        Expanded(child: createContainer("6", Colors.purple, margin: 10)),
        Expanded(
            child: createContainer("7", Colors.purple.shade200, margin: 10)),
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
