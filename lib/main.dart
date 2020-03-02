import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "PatrioticYatra",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[Icon(Icons.notifications, color: Colors.black)],
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35,
                      ),
                      Icon(Icons.settings, color: Colors.white)
                    ],
                  ),
                  Text(
                    'zinzuvadiyameet@blackdevil.co',
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, fontFamily: 'Muli'),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit, color: Colors.black),
              title: Text(
                "Hon. Chief Minister's Messege",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.black),
              title: Text(
                "About Ambaji",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.hot_tub, color: Colors.black),
              title: Text(
                "Gabbar Jyot",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.near_me, color: Colors.black),
              title: Text(
                "Near by places",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.pages, color: Colors.black),
              title: Text(
                "Facilities",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.hotel, color: Colors.black),
              title: Text(
                "Accommodation",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.fastfood, color: Colors.black),
              title: Text(
                "Food (Bhojan Prasad)",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.rounded_corner, color: Colors.black),
              title: Text(
                "Fairs & Festivals",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.directions_railway, color: Colors.black),
              title: Text(
                "Transportation",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop, color: Colors.black),
              title: Text(
                "Shopping",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.black),
              title: Text(
                "Mardini Stotram",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.note_add, color: Colors.black),
              title: Text(
                "Manta",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.feedback, color: Colors.black),
              title: Text(
                "Feedback",
                style: TextStyle(fontFamily: 'Muli', color: Colors.black),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                )),
            height: 680,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "History of Ambaji",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Muli'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "The shrine of Shri Amba is regarded as a revered shrine by the Shakta Shaktism sect of Hinduism. It is believed that the Heart of Sati Devi has fallen here. The origin of the Shakti Peetha status temple is from the mythology of Daksha yaga and Sati's self immolation. Shakti Peethas were believed to have been formed when the body parts of the corpse of Sati Devi fell into different regions when Lord Shiva carried her corpse in sorrow after her death. The shrines are considered as highly revered by Shaivist (Shaivism) sect in Hinduism. The Shakti Peethas are mostly worshiped by tantra practitioners.",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      height: 200,
                      child: GoogleMap(
                        tiltGesturesEnabled: false,
                        rotateGesturesEnabled: false,
                        initialCameraPosition: CameraPosition(
                            target: LatLng(24.3310, 72.8517), zoom: 14),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Saktipith",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Muli'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        height: 200,
                        child: ListCont(),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.payment,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Text(
                        "Donation",
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.live_tv,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Text(
                        "Live",
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.alarm,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(40.0),
                                          topRight: const Radius.circular(40.0),
                                        ),
                                      ),
                                      child: Column(children: <Widget>[
                                        ListTile(
                                          leading: Icon(Icons.view_day),
                                          title: Text("Morning Aarti"),
                                          subtitle: Text("9.00 to 9.30"),
                                          trailing: Icon(Icons.alarm),
                                        ),
                                        Divider(
                                          height: 5,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.view_day),
                                          title: Text("evening Aarti"),
                                          subtitle: Text("9.00 to 9.30"),
                                          trailing: Icon(Icons.alarm),
                                        ),
                                        Divider(
                                          height: 5,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.view_day),
                                          title: Text("Rajbhog Aarti"),
                                          subtitle: Text("9.00 to 9.30"),
                                          trailing: Icon(Icons.alarm),
                                        ),
                                        Divider(
                                          height: 5,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.view_day),
                                          title: Text("Sayan Aarti"),
                                          subtitle: Text("9.00 to 9.30"),
                                          trailing: Icon(Icons.alarm),
                                        ),
                                        Divider(
                                          height: 5,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.view_day),
                                          title: Text("others Aarti"),
                                          subtitle: Text("9.00 to 9.30"),
                                          trailing: Icon(Icons.alarm),
                                        ),
                                        Divider(
                                          height: 5,
                                        ),
                                      ]),
                                      height: 400,
                                    ));
                          }),
                      Text(
                        "Schdual",
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListCont extends StatefulWidget {
  @override
  _ListCont createState() => _ListCont();
}

class Piths {
  String image;
  String name;
  String location;
  String description;

  Piths(String image, String name, String location, String description) {
    this.image = image;
    this.name = name;
    this.location = location;
    this.description = description;
  }
}

class _ListCont extends State<ListCont> {
  List<Piths> piths = new List();

  _ListCont() {
    piths.add(Piths("image/ambaji.png", "Ambaji Temple", "Ambaji",
        "The shrine of Shri Amba is regarded as a revered shrine by the Shakta Shaktism sect of Hinduism. It is believed that the Heart of Sati Devi has fallen here. The origin of the Shakti Peetha status temple is from the mythology of Daksha yaga and Sati's self immolation. Shakti Peethas were believed to have been formed when the body parts of the corpse of Sati Devi fell into different regions when Lord Shiva carried her corpse in sorrow after her death. The shrines are considered as highly revered by Shaivist (Shaivism) sect in Hinduism. The Shakti Peethas are mostly worshiped by tantra practitioners."));
    piths.add(
        Piths("image/logo.png", "Hello World 2", "Location", "description2"));
    piths.add(
        Piths("image/logo.png", "Hello World 3", "Location", "description3"));
    piths.add(
        Piths("image/logo.png", "Hello World 4", "Location", "description4"));
    piths.add(
        Piths("image/logo.png", "Hello World 5", "Location", "description5"));
    piths.add(
        Piths("image/logo.png", "Hello World 6", "Location", "description6"));
    piths.add(
        Piths("image/logo.png", "Hello World 7", "Location", "description7"));
  }

  Widget MyPiths(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (contex) => MyDetail(piths[index])))
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: piths[index],
              child: Image.asset(
                piths[index].image,
                height: 120,
              ),
            ),
            SizedBox(height: 10),
            Text(
              piths[index].name,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Muli'),
            ),
            Text(
              piths[index].location,
              style: TextStyle(
                backgroundColor: Color(0xffFFF2EA),
                fontSize: 10,
                fontWeight: FontWeight.w400,
                fontFamily: 'Muli',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: piths.length,
        itemBuilder: (contex, index) => MyPiths(contex, index));
  }
}