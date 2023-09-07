import 'package:flutter/material.dart';
import 'package:ios_merge_apps/main.dart';
import 'database3(1).dart';


class United_States extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Country of United States')),

        body: Column(
          children: [
            Text(countries['United States'] ?? ''),
            Image.asset('lib/states/usa.png'),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back')),
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>MyApp()));}, child: Text('Back to Start'))
          ],
        )
    );
  }
}

class Canada extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Country of Canada')),

        body: Column(
          children: [
            Text(countries['Canada'] ?? ''),
            Image.asset('lib/states/canada.png'),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back')),
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>MyApp()));}, child: Text('Back to Start'))

          ],
        )
    );
  }
}