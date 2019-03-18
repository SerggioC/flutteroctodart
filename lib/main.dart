import 'package:flutter/material.dart';
import 'package:testing_flutter/decks_and_cards.dart';

// Main => entry point for the app
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Image List App'),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Lista 1"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Lista 2"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Lista 3"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have clicked the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              onPressed: () {
                makeMyDeck();
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.red, Colors.orangeAccent],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Text('Gradient Button'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              title: Text("Photo"),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.print),
              title: Text("Print"),
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text("Two"),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.wifi),
              title: Text("Three"),
              backgroundColor: Colors.blueGrey),
        ],
        iconSize: 30,
      ),
    );
  }
}
