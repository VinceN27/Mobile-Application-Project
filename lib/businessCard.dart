import 'package:flutter/material.dart';


class businessCard extends StatelessWidget {
  const businessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:
        Text('Business Card-Vince'),),
        body:Container(height: 120,width:260 ,
          decoration: BoxDecoration(border: Border.all(width: 5)),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle, size: 30,),
                  Column(children: [Text('Vince Ngitit',style: TextStyle(fontSize: 18),),
                    Text('App developer', style: TextStyle(fontSize: 18),),
                  ],),
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('300 Jay St', style: TextStyle(fontSize: 16),),
                  Text('646-123-1235', style: TextStyle(fontSize: 16),),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.accessibility),Icon(Icons.timer),
                  Icon(Icons.phone_android),Icon(Icons.phone_android_rounded),
                ],),
            ],
          ),
        ),
      ),
    );
  }
}
