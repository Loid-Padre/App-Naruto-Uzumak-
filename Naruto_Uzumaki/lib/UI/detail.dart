import 'package:appnaruto/model/NarutoClass.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Detail extends StatefulWidget {
  Naruto _naruto;
  Detail(Naruto naruto) {
    this._naruto = naruto;
  }

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  double _fim = 1.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      onPressed: () {
                        Share.share(widget._naruto.image);
                       
                      },
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(
                  "Naruto Uzumaki",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                    title: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Hero(
                          tag: widget._naruto,
                          child: Container(
                            height: 120,
                            width: 190,
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
                                        widget._naruto.image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                    ),
                    background: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Image.asset(
                            "images/large.gif",
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
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
                      ],
                    )),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      widget._naruto.nome,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange,
                        fontSize: 25,
                      ),
                    ),
                    subtitle: Text(widget._naruto.vila),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      "Poderes",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10,
                      top: 8,
                    ),
                    child: Text(
                      widget._naruto.poderes,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 15,
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
