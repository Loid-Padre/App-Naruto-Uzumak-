import 'package:appnaruto/model/akaClass.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DetailAka extends StatefulWidget {
  Aka _aka;
  DetailAka(Aka aka) {
    this._aka = aka;
  }
  @override
  _DetailAkaState createState() => _DetailAkaState();
}

class _DetailAkaState extends State<DetailAka> {
  double _fim = 1.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Share.share(widget._aka.image);
              },
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Akatsuki",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget._aka,
                    child: Container(
                      height: 200,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0, end: _fim),
                          duration: Duration(
                            seconds: 2,
                          ),
                          curve: Curves.bounceInOut,
                          builder: (context, value, child) {
                            return Transform.scale(
                              scale: value,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  widget._aka.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      widget._aka.nome,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      widget._aka.poderes,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
