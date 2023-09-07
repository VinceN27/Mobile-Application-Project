import 'package:flutter/material.dart';
import 'package:ios_merge_apps/countries.dart';
import 'database3(1).dart';


class Kansas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of Kansas'),
          bottom: TabBar(tabs: [
          Tab(text: 'General'),
          Tab(text:'Hiking' ,),
          Tab(text: 'Camping'),
          ],
          )
            ,),
          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['Kansas'] ?? ''),
                Image.asset('lib/states/kansas.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['KS hiking'] ?? ''),
                  Image.asset('lib/states/kansas.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['KS camping'] ?? ''),
                  Image.asset('lib/states/kansas.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              )
          ]
          )
      ),
    );
  }
}

class Oklahoma extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of Oklahoma'),
              bottom: TabBar(tabs: [
                Tab(text: 'General'),
                Tab(text:'Hiking' ,),
                Tab(text: 'Camping'),
              ],
              )
          ),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['Oklahoma'] ?? ''),
                Image.asset('lib/states/oklahoma.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['OK hiking'] ?? ''),
                  Image.asset('lib/states/oklahoma.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['OK camping'] ?? ''),
                  Image.asset('lib/states/oklahoma.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}

class Massachusetts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of Massachusetts'),
              bottom: TabBar(tabs: [
                Tab(text: 'General'),
                Tab(text:'Hiking' ,),
                Tab(text: 'Camping'),
              ],
              )
          ),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['Massachusetts'] ?? ''),
                Image.asset('lib/states/massachusetts.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['MS hiking'] ?? ''),
                  Image.asset('lib/states/massachusetts.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['MS camping'] ?? ''),
                  Image.asset('lib/states/massachusetts.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}

class Idaho extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of Idaho'),
              bottom: TabBar(tabs: [
                Tab(text: 'General'),
                Tab(text:'Hiking' ,),
                Tab(text: 'Camping'),
              ],
              )
          ),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['Idaho'] ?? ''),
                Image.asset('lib/states/idaho.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['ID hiking'] ?? ''),
                  Image.asset('lib/states/idaho.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['ID camping'] ?? ''),
                  Image.asset('lib/states/idaho.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}


class Texas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of Texas'),
              bottom: TabBar(tabs: [
                Tab(text: 'General'),
                Tab(text:'Hiking' ,),
                Tab(text: 'Camping'),
              ],
              )
          ),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['Texas'] ?? ''),
                Image.asset('lib/states/texas.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['TX hiking'] ?? ''),
                  Image.asset('lib/states/texas.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['TX camping'] ?? ''),
                  Image.asset('lib/states/texas.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}

class New_York extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of New York'),
              bottom: TabBar(tabs: [
                Tab(text: 'General'),
                Tab(text:'Hiking' ,),
                Tab(text: 'Camping'),
              ],
              )
          ),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['New York'] ?? ''),
                Image.asset('lib/states/newyork.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['NY hiking'] ?? ''),
                  Image.asset('lib/states/newyork.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['NY camping'] ?? ''),
                  Image.asset('lib/states/newyork.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}

class Rhode_Island extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of Rhode Island'),
            bottom: TabBar(tabs: [
              Tab(text: 'General'),
              Tab(text:'Hiking' ,),
              Tab(text: 'Camping'),
            ],
            )
            ,),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['Rhode Island'] ?? ''),
                Image.asset('lib/states/rhodeisland.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['RI camping'] ?? ''),
                  Image.asset('lib/states/rhodeisland.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(states['RI hiking'] ?? ''),
                  Image.asset('lib/states/rhodeisland.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}

class North_Carolina extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of North Carolina'),
              bottom: TabBar(tabs: [
                Tab(text: 'General'),
                Tab(text:'Hiking' ,),
                Tab(text: 'Camping'),
              ],
              )
          ),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                Text(states['North Carolina'] ?? ''),
                Image.asset('lib/states/northcaroline.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['NC camping'] ?? ''),
                  Image.asset('lib/states/northcaroline.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>United_States()));}, child: Text('Country of United States')),
                  Text(statetext['NC hiking'] ?? ''),
                  Image.asset('lib/states/northcaroline.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}

class British_Columbia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( length: 3,
      child: Scaffold(
          appBar: AppBar(title: Text('State of British Columbia'),
              bottom: TabBar(tabs: [
                Tab(text: 'General'),
                Tab(text:'Hiking' ,),
                Tab(text: 'Camping'),
              ],
              )
          ),

          body:
          TabBarView(
            children: [
              Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Canada()));}, child: Text('Country of Canada')),
                Text(states['British Columbia'] ?? ''),
                Image.asset('lib/states/britishcolumbia.png'),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
              ],
            ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Canada()));}, child: Text('Country of Canada')),
                  Text(statetext['BC camping'] ?? ''),
                  Image.asset('lib/states/britishcolumbia.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Canada()));}, child: Text('Country of Canada')),
                  Text(statetext['BC hiking'] ?? ''),
                  Image.asset('lib/states/britishcolumbia.png'),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
                ],
              ),
            ]
          )
      ),
    );
  }
}

