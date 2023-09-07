import 'package:flutter/material.dart';
import 'database3(1).dart';
import 'states.dart';


class Witchita extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Wichita')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Kansas()));}, child: Text('State of Kansas')),
            Text(cities['Wichita'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}

class Brooklyn extends StatelessWidget {
  final Bridge = new LandMarks(
    title: 'Brooklyn Bridge',
    description: 'The Brooklyn Bridge is a hybrid cable-stayed/suspension bridge in New York City, spanning the East River between the boroughs of Manhattan and Brooklyn. Opened on May 24, 1883, the Brooklyn Bridge was the first fixed crossing of the East River. It was also the longest suspension bridge in the world at the time of its opening, with a main span of 1,595.5 feet (486.3 m) and a deck 127 ft (38.7 m) above mean high water. The span was originally called the New York and Brooklyn Bridge or the East River Bridge but was officially renamed the Brooklyn Bridge in 1915.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Brooklyn_Bridge_Manhattan.jpg/1280px-Brooklyn_Bridge_Manhattan.jpg',
  );

  final Center = new LandMarks(
    title: 'Barclay\'s Center',
    description: 'Barclays Center is a multi-purpose indoor arena in the New York City borough of Brooklyn. The arena is home to the Brooklyn Nets of the National Basketball Association and the New York Liberty of the Women\'s National Basketball Association.[9] The arena also hosts concerts, conventions and other sporting and entertainment events.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/BarclayCenter-2_%2848034233762%29.jpg/1920px-BarclayCenter-2_%2848034233762%29.jpg',
  );

  final Park = new LandMarks(
    title: 'Prospect Park',
    description: 'Prospect Park is an urban park in Brooklyn, New York City. The park is situated between the neighborhoods of Park Slope, Prospect Heights, Prospect Lefferts Gardens, Flatbush, and Windsor Terrace, and is adjacent to the Brooklyn Museum, Grand Army Plaza, and the Brooklyn Botanic Garden. With an area of 526 acres (213 ha),[5] Prospect Park is the second largest public park in Brooklyn, behind Marine Park.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Prospect_Park_New_York_October_2015_003.jpg/1280px-Prospect_Park_New_York_October_2015_003.jpg',
  );
  final List<LandMarks> brooklynlandmarks=[];
  int x =0;


  @override
  Widget build(BuildContext context) {
    if(x==0){
      brooklynlandmarks.add(Bridge);
      brooklynlandmarks.add(Center);
      brooklynlandmarks.add(Park);
      x=x+1;
    }

    return Scaffold(
        appBar: AppBar(title: Text('City of Brooklyn')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>New_York()));}, child: Text('State of New York')),
            Text(cities['Brooklyn'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back')),
            Expanded(child: ListView.builder(itemCount: brooklynlandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index ){
                  return ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(brooklynlandmarks[index].image),),
                    title: Text(brooklynlandmarks[index].title),
                    subtitle: Text(brooklynlandmarks[index].description),
                  );
                }
            ))
          ],
        )
    );
  }
}

class Stillwater extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Stillwater')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Oklahoma()));}, child: Text('State of Oklahoma')),
            Text(cities['Stillwater'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}

class Tulsa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Tulsa')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Oklahoma()));}, child: Text('State of Oklahoma')),
            Text(cities['Tulsa'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}



class Durham extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Durham')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>North_Carolina()));}, child: Text('State of North Carolina')),
            Text(cities['Durham'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}

class Goodwell extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Goodwell')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Oklahoma()));}, child: Text('State of Oklahoma')),
            Text(cities['Goodwell'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}

class Norman extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Norman')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Oklahoma()));}, child: Text('State of Oklahoma')),
            Text(cities['Norman'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}

class Lawrence extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Lawrence')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Massachusetts()));}, child: Text('State of Massachussets')),
            Text(cities['Lawrence'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}

class Pocatello extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Pocatello')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Idaho()));}, child: Text('State of Idaho')),
            Text(cities['Pocatello'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}

class Houston extends StatelessWidget {
  final SpaceCenter = new LandMarks(
    title: 'Space Center Houston',
    description: 'Space Center Houston is a science museum that serves as the official visitor center of NASA Johnson Space Center in Houston. It was designated a Smithsonian Affiliate museum in 2014. The organization is owned by NASA, and operated under a contract by the nonprofit Manned Spaceflight Education Foundation, a 501(c)(3) organization. The Johnson Space Center is the home of Mission Control and astronaut training',
    image: 'https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_712,q_75,w_1024/https://assets.simpleviewinc.com/simpleview/image/upload/crm/houston/Space-Center-Houston-10-6a9b56a0f2ee84e_6a9b57f0-b8f9-6bea-77ec8594e50c5d9e.jpg ',
  );

  final Galleria = new LandMarks(
    title: 'The Galleria',
    description: 'The Galleria, stylized theGalleria and also known as the Houston Galleria, is an upscale mixed-use urban development and shopping mall located in the Uptown District of Houston, Texas, United States.[3][4][5][6] The development consists of a retail complex, as well as the Galleria Office Towers complex,[7] two Westin hotels, and a private health club. The office towers and hotels are separately owned and managed from the mall. The anchor tenants are Neiman Marcus, Nordstrom, Saks Fifth Avenue, and Macy\'s.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/GalleriaOne.jpg/800px-GalleriaOne.jpg',
  );

  final Aquarium = new LandMarks(
    title: 'DownTown Aquarium',
    description: 'Downtown Aquarium is a public aquarium and restaurant located in Houston, Texas, United States that was developed from two Houston landmarks: Fire Station No. 1 and the Central Waterworks Building. The aquarium is located on a 6-acre (2.4 ha) site at 410 Bagby Street in downtown Houston. It houses over 200 species of aquatic animals in 500,000 US gallons (1,900,000 L) of aquariums. The complex includes two restaurants, a bar, and banquet facilities. It offers programs such as Marine Biologist for a Day, Zoologist for a Day, Sea Safari Camp, overnight stays and more. The education department works with school groups and conducts outreach programs.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Houston%2C_Downtown_Aquarium_2012.JPG/1280px-Houston%2C_Downtown_Aquarium_2012.JPG',
  );
  final List<LandMarks> houstonlandmarks =[];
  int x =0;


  @override
  Widget build(BuildContext context) {
    if(x==0){
      houstonlandmarks.add(SpaceCenter);
      houstonlandmarks.add(Galleria);
      houstonlandmarks.add(Aquarium);
      x = x+1;
    }

    return Scaffold(
        appBar: AppBar(title: Text('City of Houston')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Texas()));}, child: Text('State of Texas')),
            Text(cities['Houston'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back')),
            Expanded(child: ListView.builder(itemCount: houstonlandmarks.length,
                itemBuilder: (BuildContext ctxt, final int index ){
                  return ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(houstonlandmarks[index].image),),
                    title: Text(houstonlandmarks[index].title),
                    subtitle: Text(houstonlandmarks[index].description),
                  );
                }
            ))

          ],
        )
    );
  }
}

class Vancouver extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Vancouver')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>British_Columbia()));}, child: Text('State of British Columbia')),
            Text(cities['Vancouver'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back')),
          ]
        )
    );
  }
}

class Cambridge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Cambridge')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Massachusetts()));}, child: Text('State of Massachussets')),
            Text(cities['Cambridge'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back'))
          ],
        )
    );
  }
}


class Providence extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('City of Providence')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Rhode_Island()));}, child: Text('State of Rhode Island')),
            Text(cities['Providence'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back')),
          ],
        )
    );
  }
}

class Albany extends StatelessWidget {
  LandMarks museum = LandMarks(
    title: 'New York State Museum',
    description: 'The New York State Museum is a research-backed institution in Albany, New York, United States. It is located on Madison Avenue, attached to the south side of the Empire State Plaza, facing onto the plaza and towards the New York State Capitol. The museum houses art, artifacts (prehistoric and historic), and ecofacts that reflect New York’s cultural, natural, and geological development. Operated by the New York State Education Department\'s Office of Cultural Education, it is the oldest and largest state museum in the US. Formerly located in the State Education Building, the museum now occupies the first four floors of the Cultural Education Center, a ten-story, 1,500,000-square-foot (140,000 m2) building that also houses the New York State Archives and New York State Library.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/NewYorkStateCulturalEducationCenter.JPG/1280px-NewYorkStateCulturalEducationCenter.JPG'
  );

  LandMarks capitol = LandMarks(
    title: 'New York State Capitol',
    description: 'The New York State Capitol, the seat of the New York state government, is located in Albany, the capital city of the U.S. state of New York. The capitol building is part of the Empire State Plaza complex on State Street in Capitol Park. Housing the New York State Legislature, the building was completed in 1899 at a cost of US 25 million dollars (equivalent to 703 million dollars in modern dollars[3]), making it the most expensive government building of its time.[4] It was listed on the National Register of Historic Places in 1971, then included as a contributing property when the Lafayette Park Historic District was listed in 1978. The New York State Capitol was declared a National Historic Landmark in 1979. ',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/NYSCapitolPanorama.jpg/1920px-NYSCapitolPanorama.jpg',
  );

  LandMarks art = LandMarks(
    title: 'Albany Institute of History & Art',
    description: 'The Albany Institute of History & Art (AIHA) is a museum in Albany, New York, United States, "dedicated to collecting, preserving, interpreting and promoting interest in the history, art, and culture of Albany and the Upper Hudson Valley region".[2] It is located on Washington Avenue (New York State Route 5) in downtown Albany. Founded in 1791, it is among the oldest museums in the United States.[3]',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Albany_Institute_of_History_and_Art_Panorama.jpg/1920px-Albany_Institute_of_History_and_Art_Panorama.jpg',
  );
  final List<LandMarks> albanylandmarks=[];
  int x =0;

  @override
  Widget build(BuildContext context) {
    if(x==0)
      {
        albanylandmarks.add(museum);
        albanylandmarks.add(capitol);
        albanylandmarks.add(art);
        x = x+1;
      }

    return Scaffold(
        appBar: AppBar(title: Text('City of Albany')),

        body: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=>New_York()));}, child: Text('State of New York')),
            Text(cities['Albany'] ?? ''),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Go back')),
            Expanded(child: ListView.builder(itemCount: albanylandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index ){
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(albanylandmarks[index].image),),
                title: Text(albanylandmarks[index].title),
                subtitle: Text(albanylandmarks[index].description),
              );
            }
            ))
          ],
        )
    );
  }
}


class LandMarks {
  final String title, description, image;
  LandMarks({this.title ='', this.description= '', this.image=''});
}