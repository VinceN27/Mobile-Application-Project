import 'package:flutter/material.dart';
import 'colleges.dart';

// Adding images to the logo of each college

class college_project extends StatelessWidget {
  const college_project({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colleges_columns_rows_Vince',
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
      home: const MyHomePage(title: 'Colleges_columns_rows_Vince'),
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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
        child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'WSU', college: Wsu(),bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'Cuny', college: Cuny(),bgcolor: Color(0XFF0033a1),forecolor: Colors.white,),
                CollegeButton(collegename: 'ISU', college: Isu(),bgcolor: Colors.orange, forecolor: Colors.black,),
              ],),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'Ou', college: Ou(),bgcolor: Colors.red,forecolor: Colors.white,),
                CollegeButton(collegename: 'NYU', college: Nyu(),bgcolor: Colors.purple,forecolor: Colors.white ,),
                CollegeButton(collegename: 'DUKE', college: Duke(),bgcolor: Colors.blue, forecolor: Colors.white,),
              ],),


            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'OSU', college: Osu(),bgcolor: Colors.deepOrange, forecolor: Colors.black,),
                CollegeButton(collegename: 'OPSU', college: Opsu(),bgcolor: Colors.red,forecolor: Colors.blue,),
                CollegeButton(collegename: 'UTULSA', college: Utulsa(),bgcolor: Color.fromARGB(225, 224, 206, 120), forecolor: Colors.redAccent  ,),
              ],),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'KU', college: Ku(),bgcolor: Colors.blue, forecolor: Colors.red),
                CollegeButton(collegename: 'RICE', college: Rice(),bgcolor: Colors.black,forecolor: Colors.white),
                CollegeButton(collegename: 'BC', college: Bc(),bgcolor: Colors.yellow,forecolor: Colors.blue,),
              ],),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'MIT', college: Mit(),bgcolor: Colors.red, forecolor: Colors.grey,),
                CollegeButton(collegename: 'BROWN', college: Brown(),bgcolor: Colors.brown,forecolor: Colors.red,),
                CollegeButton(collegename: 'SUNY', college: Suny(),bgcolor: Colors.blue,forecolor: Colors.white,),
              ],),


          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CollegeButton extends StatelessWidget {
  final String collegename;
  final Widget college;
  Color forecolor;
  Color bgcolor;

  CollegeButton({this.collegename = ' ', this.college = const Text(''), this.forecolor=Colors.white, this.bgcolor=Colors.black});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(child: Text(collegename,
      style: TextStyle(color: forecolor),),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(bgcolor)),
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>college,));
        });
  }

}