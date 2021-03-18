import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App Title",
      theme: ThemeData.dark(),
      home: MyHomePage(title: "Stateful AppBar Title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;
  MyHomePage({this.title});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacDegeriniArttir();
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("increase"),
              color: Colors.green,
              onPressed: sayacDegeriniArttir,
            ),
            Text(
              "${widget.sayac}",
              style: TextStyle(
                  fontSize: 32,
                  color: widget.sayac <= 0 ? Colors.red : Colors.green),
            ),
            RaisedButton(
              child: Text("decrease"),
              color: Colors.red,
              onPressed: sayacDegeriniAzalt,
            ),
          ],
        ),
      ),
    );
  }

  void sayacDegeriniArttir() {
    setState(() {
      widget.sayac++;
      debugPrint("Sayac değeri: ${widget.sayac}");
    });
  }

  void sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("Sayac değeri: ${widget.sayac}");
    });
  }
}
