import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
var isPressed = false;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //scafold merupakan class untuk mengaktifkan untuk menggunakan material design
    return Scaffold(
        appBar: AppBar(
          title: Text("Genshin impact"),
        ),
      body: Stack(
        children: <Widget>[
          Container(decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlue,Colors.lightBlueAccent,Colors.white24],
            )
          ),),
          Column(
            children: <Widget>[
                Flexible(flex: 2, child: Row(
                  children: <Widget>[
                    Flexible(flex :1, child:Container(
                      width: 1000,
                      child: Image(
                        image: NetworkImage("https://cdn.mos.cms.futurecdn.net/y33vguPCnvSmfCWTUbimUf-1200-80.jpg.webp",
                        ),fit: BoxFit.fill,
                      ),
                    ),),
                  ],
                ),),
              Flexible(flex: 1, child: Row(
                children: <Widget>[
                  Flexible(flex :1, child:Container(
                    margin: EdgeInsets.all(5),
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage("https://uploadstatic-sea.mihoyo.com/contentweb/20200924/2020092417575255251.jpg",
                        ),fit: BoxFit.cover,
                      ),
                    ),
                  ),),
                  Flexible(flex :1, child:Container(
                    margin: EdgeInsets.all(5),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage("https://uploadstatic-sea.mihoyo.com/contentweb/20200924/2020092417575257734.jpg",
                        ),fit: BoxFit.cover,
                      ),
                    ),
                  ),),
                  Flexible(flex :1, child:Container(
                    margin: EdgeInsets.all(5),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage("https://uploadstatic-sea.mihoyo.com/contentweb/20200924/2020092417575534557.jpg",
                        ),fit: BoxFit.cover,
                      ),
                    ),
                  ),),
                  Flexible(flex :1, child:Container(
                    margin: EdgeInsets.all(5),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage("https://uploadstatic-sea.mihoyo.com/contentweb/20200924/2020092417575267258.jpg",
                        ),fit: BoxFit.cover,
                      ),
                    ),
                  ),),
                ],
              ),),
              Flexible(flex: 4, child: Row(
                children: <Widget>[
                  Flexible(flex: 1, child: Column(
                    children: <Widget>[
                      Text("Genshin Impact",style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold),textAlign: TextAlign.center,),
                      Flexible(child: Container(
                        margin: EdgeInsets.all(10),
                        child: ListView(
                          children: <Widget>[
                            Text("An Epic Fantasy Adventure",style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("  Experience an immersive single-player campaign. As a traveler from another world, you will"
                                " embark on a journey to reunite with your long-lost "
                                "sibling and unravel the mysteries of Teyvat, and yourself.",style: TextStyle(fontSize: 15,letterSpacing: 1.5,),),
                            SizedBox(height: 20,),
                            Text("Your World to Discover",style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("  Fly across the open world, swim through crystal-clear waters, and climb towering mountains. "
                                "Stray off the beaten path to discover all the"
                                " hidden secrets of a world full of wonder and mystery.",style: TextStyle(fontSize: 15,letterSpacing: 1.5),),
                            SizedBox(height: 20,),
                            Text("Travel Alone or Battle Together",style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Charge head-on into battles solo, or invite friends to join the fight against "
                                "dangerous monsters with 4-player cross-play for PS4, iOS, Android, and PC.",style: TextStyle(fontSize: 15,letterSpacing: 1.5),),
                            SizedBox(height: 20,),
                            Text("Master the Seven Elements",style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Not just another mindless hack and slash. Manipulating the various elements "
                                "is the key to defeating powerful enemies and solving challenging puzzles.",style: TextStyle(fontSize: 15,letterSpacing: 1.5),),
                            SizedBox(height: 20,),
                            Text("Build Your Dream Team",style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Choose who fights by your side. Build your party "
                                "from over 20+ characters (with more to come) — each with unique abilities, personalities, "
                                "and combat styles.",style: TextStyle(fontSize: 15,letterSpacing: 1.5),),
                          ],
                        ),
                      )
                        ,)
                    ],
                  ),),
                ],
              ),),
            ],
          ),
          Align(
            alignment: Alignment(0.85,-0.95),
            child:  FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              foregroundColor:  isPressed ? Colors.red : Colors.black,
              child: Icon(
                  Icons.favorite
              ),
              onPressed: () => setState(() => isPressed = !isPressed),
            ),
          )
        ],
      ),
    );
  }
}


