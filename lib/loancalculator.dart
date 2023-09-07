import 'package:flutter/material.dart';


class loanCalculator extends StatelessWidget {
  const loanCalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          primarySwatch: Colors.purple
      ),
      home: const MyHomePage(title: 'Loan Calculator-Vince Ngitit'),
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
  String t1='', t2='', result=''; double n1=0.0, n2=0.0;
  CalculateLoan c = CalculateLoan();

  TextStyle ts = TextStyle(fontSize: 23, color:Colors.purple, fontFamily: 'Courier');

  TextEditingController te1 = TextEditingController();
  TextEditingController te2 = TextEditingController();

  void _incrementCounter() {
    setState(() {
      result=c.doit(amount: n1, weekly:n2);
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  void reset(){
    te1.text='';
    te2.text='';
    result='';
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
          children: [ SizedBox(height:15),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(result, style: ts,),
                Container(width: 130,
                  child: Column(
                    children: [
                      TextField(controller: te1,style: ts,decoration: InputDecoration(labelText: 'Loan Amount',
                          border: OutlineInputBorder()),keyboardType: TextInputType.number,
                        onChanged: (text){
                          t1=text;
                          n1=double.parse(t1);
                        },),
                      SizedBox(height: 15,),
                      TextField(controller: te2,style: ts,decoration: InputDecoration(labelText: 'Weekly',
                          border: OutlineInputBorder()),keyboardType: TextInputType.number,
                        onChanged: (text){
                          t2=text;
                          n2=double.parse(t2);
                        },),
                      SizedBox(height: 15,),
                      Container(color: Colors.green,
                        child: OutlinedButton(onPressed: _incrementCounter,
                            child: Text('Calculate', style: ts,)),
                      ),
                      SizedBox(height: 15,),
                      Container(color: Colors.grey,
                        child: OutlinedButton(onPressed: reset,
                            child: Text('Reset', style: ts,)),
                      )
                    ],
                  )
                  ,),
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



class CalculateLoan{
  double amount = 0.0, weekly=0.0; String output=''; int count=1;

  String doit({amount, weekly}){
    output = output + 'Wk 0 Balance' + '$amount\n';
    while(amount>0){
      if(amount>=weekly)
      {
        amount = amount-weekly;
        output = output + 'Wk$count Balance' + '$amount\n';
        count = count+1;
      }
      else if(amount<weekly){
        count=count+1;
        output = output + 'Wk$count Balance' + ' 0\n';

      }

    }
    return output;
  }

}












