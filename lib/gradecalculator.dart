import 'package:flutter/material.dart';


class GradeCalcualtor extends StatelessWidget {
  const GradeCalcualtor({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Calculator',
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String t1='', t2 =' ', result =' '; double num2=0.0;
  GradeCalculate g = GradeCalculate();


  void _incrementCounter() {
    setState(() {
      if(t1=='') result='Please enter Student Name';
      else if(t2=='') result = 'Please enter Student Grade';
      else result = g.Grade(grade: num2, name: t1);
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
          children: [
            Padding(padding: EdgeInsets.all(18.0),
                child: Text(result,style: TextStyle(fontSize: 25.0),)
            ),

            Row(
              children: [
                Container(width: 150,
                  child: TextField(decoration:
                  InputDecoration (labelText: 'Enter your name: ',
                      border: OutlineInputBorder()),
                    keyboardType: TextInputType.text,
                    onChanged: (text){
                      t1=text;
                    },
                  ),
                ),

                Container(width: 150,
                  child: TextField(decoration: InputDecoration (labelText: 'Enter Your Grade: ',
                    border: OutlineInputBorder(),),
                    keyboardType: TextInputType.number,
                    onChanged: (text){
                      t2=text;
                      num2=double.parse(t2);
                    },
                  ),
                ),
                Container(width: 60, height: 50,
                  child: RawMaterialButton(
                      onPressed: (){
                        _incrementCounter();
                      },
                      child: Text('Convert')),color: Colors.green,)

              ],
            ),

          ],
        ),





      ),
    );
  }
}

class GradeCalculate{
  double grade =0.0;
  String letter = ' ';
  String name=' ';
  GradeCalculate({this.grade=0});

  String Grade({grade,name})
  {
    if(grade>=90) letter = 'A';
    else if(grade>=80) letter = 'B';
    else if(grade>=70) letter ='C';
    else if(grade>=60) letter ='D';
    else if(grade<60) letter = 'F';
    else return 'Invalid inputs';

    return '${name} has ${letter}';
  }





}
