import 'package:flutter/material.dart';
import 'cities.dart';
import 'database3(1).dart';
import 'states.dart';

//insert state flags with instances if possible or find another way



//WSU university
class Wsu extends College {
  Wsu():super(
      collegeName: 'Washington State University',
      collegeText: 'WSU',
      citywidget: Witchita(),
  citytext: 'City of Wichita',

  );
}

class Cuny extends College {
  Cuny():super(
      collegeName: 'City University of New York',
      collegeText: 'CUNY',
    citywidget: Brooklyn(),
    citytext: 'City of Brooklyn',
  );
}

class Isu extends College {
  Isu():super(
      collegeName: 'Illinois State University',
      collegeText: 'ISU',
    citywidget: Pocatello(),
    citytext: 'City of Pocatello',


  );
}


class Ou extends College {
  Ou():super(
      collegeName: 'The University of Oklahoma',
      collegeText: 'OU',
    citywidget: Norman(),
    citytext: 'City of Norman',
  );
}

class Nyu extends College {
  Nyu():super(
      collegeName: 'New York State University',
      collegeText: 'NYU',
    citywidget: Brooklyn(),
    citytext: 'City of Brooklyn',
  );
}

class Duke extends College {
  Duke():super(
      collegeName: 'Duke University',
      collegeText: 'DUKE',
    citywidget: Durham(),
    citytext: 'City of Durham',
  );
}

class Osu extends College {
  Osu():super(
      collegeName: 'Oklahoma State University',
      collegeText: 'OSU',
    citywidget: Stillwater(),
    citytext: 'City of Stillwater',
  );
}

class Opsu extends College {
  Opsu():super(
      collegeName: 'Oklahoma Panhandle State University',
      collegeText: 'OPSU',
    citywidget:Goodwell() ,
    citytext: 'City of Goodwell',
  );
}

class Utulsa extends College {
  Utulsa():super(
    collegeName: 'University of Tulsa',
    collegeText: 'UTULSA',
    citywidget:Tulsa() ,
    citytext: 'City of Tulsa',
  );
}


class Ku extends College {
  Ku():super(
      collegeName: 'The University of Kansas',
      collegeText: 'KU',
    citywidget: Lawrence(),
    citytext: 'City of Lawrence',
  );
}


class Rice extends College {
  Rice():super(
      collegeName: 'Rice University',
      collegeText: 'RICE',
    citywidget: Houston(),
    citytext: 'City of Houston',

  );
}


class Bc extends College {
  Bc():super(
      collegeName: 'British Columbia',
      collegeText: 'BC',
    citywidget: Vancouver(),
    citytext: 'City of Vancouver',
  );
}

class Mit extends College {
  Mit():super(
      collegeName: 'Masachussets State University',
      collegeText: 'MIT',
    citywidget: Cambridge(),
    citytext: 'City of Cambridge',
  );
}


class Brown extends College {
  Brown():super(
    collegeName: 'Brown University',
    collegeText: 'BROWN',
    citywidget: Providence(),
    citytext: 'City of Providence',
    );
  }



class Suny extends College {
  Suny():super(
    collegeName: 'Suny',
    collegeText: 'SUNY',
    citywidget: Albany(),
    citytext: 'City of Albany',
  );
}

class College extends StatelessWidget {
  final String collegeName;
  final String collegeText;
  Widget citywidget;
  final String citytext;

  College({this.collegeName=" ", this.collegeText=" ",this.citywidget=const Text(''),this.citytext= ' ',
  });

  @override
  Widget build(BuildContext context) {
    print(collegeText.toLowerCase()+'logo'+'png');
    return Scaffold(
        appBar: AppBar(title: Text(collegeName)),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
            MaterialPageRoute(builder: (context)=>citywidget));}, child: Text(citytext)),
            Text(info[collegeText] ?? ''),
            Image.asset('lib/assets/'+collegeText.toLowerCase()+'logo'+'.png'),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}