import 'package:flutter/material.dart';
import 'package:ios_merge_apps/finalreview.dart';
import 'colleges.dart';
import 'ios_college_project.dart';
import 'calculator.dart';
import 'businessCard.dart';
import 'Lab0.dart';
import 'test1Review.dart';
import 'test1Reviewb.dart';
import 'test1Reviewk.dart';
import 'test1Reviewh.dart';
import 'helloWorld.dart';
import 'tipcalculator.dart';
import 'gradecalculator.dart';
import 'tempconverter.dart';
import 'guessgame.dart';
import 'loancalculator.dart';

// Adding images to the logo of each college


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      initialRoute: '/',
      routes: {
        '/': (context)=>MyHomePage(title: 'Colleges_columns_rows_Vince'),
        '/iosColleges': (context)=>college_project(),
        '/iosCalculator': (context)=>IosCalculator(),
        '/iosBusinessCard': (context)=>businessCard(),
        '/iosLab0': (context)=>Lab0(),
        '/iosTest1Review': (context)=>Test1Review(),
        '/iosTest1Reviewb': (context)=>Test1Reviewb(),
        '/iosTest1Reviewk': (context)=>Test1Reviewk(),
        '/iosTest1Reviewh': (context)=>Test1Reviewh(),
        '/iosHellowWorld' : (context)=>HelloWorld(),
        '/iosTipCalculator': (context)=>TipCalculator(),
        '/iosGradeCalculator': (context)=>GradeCalcualtor(),
        '/iosTempConverter' : (context)=> TempConverter(),
        '/iosguessGame' : (context)=> guessGame(),
        '/iosloanCalculator' : (context)=>loanCalculator(),
        '/iosfinalReview' : (context)=>finalReview(),
      },

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
              [CollegeButton(collegename: 'Colleges', college:'/iosColleges' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'Calculator', college:'/iosCalculator' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'Business Card', college:'/iosBusinessCard' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,)
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'Lab0Layout', college:'/iosLab0' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'Test1Review', college:'/iosTest1Review' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'Test1Reviewb', college:'/iosTest1Reviewb' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,)
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'Test1Reviewk', college:'/iosTest1Reviewk' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'Test1Reviewh', college:'/iosTest1Reviewh' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'TipCalculator', college:'/iosTipCalculator' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,)
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'GradeCalculator', college:'/iosGradeCalculator' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'TempConverter', college:'/iosTempConverter' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'guessGame', college:'/iosguessGame' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,)
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [CollegeButton(collegename: 'Loan Calculator', college:'/iosloanCalculator' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                CollegeButton(collegename: 'Final Review', college:'/iosfinalReview' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,),
                //CollegeButton(collegename: 'guessGame', college:'/iosguessGame' ,bgcolor: Colors.yellowAccent, forecolor: Colors.black,)
              ],
            ),




          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CollegeButton extends StatelessWidget {
  final String collegename;
  final String college;
  Color forecolor;
  Color bgcolor;

  CollegeButton({this.collegename = ' ', this.college =' ', this.forecolor=Colors.white, this.bgcolor=Colors.black});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(child: Text(collegename,
    style: TextStyle(color: forecolor),),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(bgcolor)),
        onPressed: () =>(Navigator.pushNamed(context, college))
);
  }

}