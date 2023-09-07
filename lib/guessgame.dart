import 'package:flutter/material.dart';
import 'dart:math';

class guessGame extends StatelessWidget {
  const guessGame({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ios guess game',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ios_guess_game_Vince_Ngitit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Variables for classes
  String t1='', result=''; int num1 = 75;
  //Instance
  Guess g = Guess();
  TextEditingController a = TextEditingController();

  void _incrementCounter() {
    setState(() {
      result=g.seeIfGuessedRight(n1: num1);
      print('num1=$num1');
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  void reset(){
    setState(() {
      g.reset();
      result='';
      a.text='';
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          //Buttons and layout
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(result,style: TextStyle(fontSize: 23),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: a,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter 1-100 please'
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (text){
                    t1=text;
                    num1=int.parse(t1);
                  }
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 120, height: 69 ,color: Colors.grey,
                  child: RawMaterialButton(onPressed: reset, child: Text('Reset'),),
                ),
                Container(width: 120, height: 69 ,color: Colors.green,
                  child: RawMaterialButton(onPressed: _incrementCounter, child: Text('Play Again'),),
                )
              ],
            ),







          ],



        ),
      ),
    );
  }
}

class Guess{
  int n1=0, secret=Random().nextInt(100), count =0; String output ='';
  Guess({this.n1=0});

  String seeIfGuessedRight({n1})
  {
    print(secret);
    count=count+1;
    if(n1>secret) output='Too High';
    else if(n1<secret) output = 'Too Low';
    else if(n1==secret) {output = 'Congratulations, took $count times';
    count=0; secret=Random().nextInt(100);}
    return output;
  }
  void reset(){
    count=0;
  }

}