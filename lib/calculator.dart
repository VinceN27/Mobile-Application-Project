import 'package:flutter/material.dart';


class IosCalculator extends StatelessWidget {
  const IosCalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator - Vince Ngitit',
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
      home: const MyHomePage(title: 'Calculator-Vince Ngitit'),
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
  int _counter = 0;
  double num1=0 , num2=0;
  String t1='', t2='',result='';
  Calculate c = Calculate();

  void _incrementCounter() {
    setState(() {
      result = '${c.sum(num1, num2)}'
          '${c.substract(num1, num2)}'
          '${c.multiply(num1, num2)}'
          '${c.div(num1, num2)}'
          '${c.average(num1, num2)}'
      ;
      _counter++;
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
            Text(result,style: TextStyle(fontSize: 22),),
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(decoration: InputDecoration( labelText: 'Enter a number',
                    border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  onChanged: (text){
                    t1=text;
                    num1=double.parse(t1);
                  },
                )
            ),
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(decoration: InputDecoration( labelText: 'Enter a number',
                    border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  onChanged: (text){
                    t2=text;
                    num2=double.parse(t2);
                  },
                )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Calculate{
  double num1,num2;
  Calculate({this.num1=0.0, this.num2=0.0});
  String sum(num1,num2){
    return 'The summation is ${num1+num2}\n';
  }
  String substract(num1,num2){
    return 'The subtraction is ${num1-num2}\n';
  }
  String multiply(num1,num2){
    return 'The multiplication is ${num1*num2}\n';
  }
  String div(num1,num2){
    return 'The division is ${num1/num2}\n';
  }

  String average(num1,num2){
    return 'The average is ${(num1+num2)/2}\n';
  }

}










