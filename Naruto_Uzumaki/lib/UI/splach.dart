import 'package:flutter/material.dart';
import 'HomePage.dart';

class Splach extends StatefulWidget {
  @override
  _SplachState createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/splach.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Opacity(
            opacity: 0.8,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.redAccent,
                    Colors.lightBlue,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 180,
              left: 250,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/large.gif",
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 180,
                    left: 10,
                  ),
                  child: Text(
                    "Naruto Uzumaki",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7),
                  child: Text(
                    "Encontre a sua personagem favorita",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 170),
                  child: ListTile(
                    title: Text(
                      "Vilas/Poderes",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Inspira-te na tua personagem",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          child: Icon(
                            Icons.group_work_outlined,
                            color: Colors.deepOrange,
                            size: 40,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12, left: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      child: Text(
                        "Começar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
