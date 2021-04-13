import 'package:appnaruto/model/fraseClass.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Bijus extends StatefulWidget {
  @override
  _BijusState createState() => _BijusState();
}

class _BijusState extends State<Bijus> {
  double _fim = 1.2;
  List<Frases> frase = [];
  _BijusState() {
    frase.add(Frases(
        "Obito Uchiha",
        "No mundo ninja, aqueles que quebram as regras e as lei sao vistos como escoria, mas aqueles que abandonam ate um de seus amigos sao piores que escoria.",
        "images/Obito_(Guerra).png"));
    frase.add(Frases(
        "Hatake Kakashi",
        "Saber o que e certo e escolher ignora-lo e um ato de covardia.",
        "images/kakashi-3_cke.jpg"));
    frase.add(Frases(
        "Naruto Uzumaki",
        "“Nao e a face que torna alguem um monstro, sao as escolhas que voce faz com sua vida.” “O fracasso nao e razao para voce desistir, desde que continue acreditando.”",
        "images/naruto.jpg"));
    frase.add(Frases(
        "Hyuga Hinata",
        "Porque voce falha, voce tem a forca para se levantar de novo… e isso que acredito ser a forca verdadeira",
        "images/hinata-hyuga_cke.jpg"));
    frase.add(Frases(
        "Madara Uchiha",
        "Neste mundo, onde quer que exista luz, existem tambem sombras. Enquanto o conceito de vencedores existir, precisam tambem existir derrotados. O desejo egoista de proteger a paz causa guerras e o odio nasce para proteger o amor.",
        "images/frases-de-Madara-Uchiha.jpg"));
    frase.add(Frases(
        "Itachi Uchiha",
        "Aqueles que nao reconhecem seu verdadeiro eu estao condenados ao fracasso.",
        "images/itachi-uchiha-0_cke.jpg"));
    frase.add(Frases(
        "Shikamaru Nara",
        "Nao ha vantagem alguma em viver a vida correndo.",
        "images/shikamaru.jpg"));
    frase.add(Frases(
        "Jiraiya",
        "A vida de um shinobi nao e medida por como ele viveu, mas pelo que conseguiu atingir antes de morrer",
        "images/jiraya-0.jpg"));
    frase.add(Frases(
        "Pain",
        "Por vezes voce precisa de sofrer para saber, cair para crescer, perder para ganhar porque a maiores licoes na vida sao aprendidas atraves da dor.",
        "images/nagato-0_cke.jpg"));
    frase.add(Frases(
        "Gaara",
        "Apenas porque alguem e importante para voce, nao significa que essa pessoa seja boa. Mesmo que voce saiba que essa pessoa e ma... simplesmente nao conseguimos combater nossa solidao.",
        "images/gaara-1_cke.jpg"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Frases",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: frase.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
            child: Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange,
              ),
              child: Column(
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: _fim),
                      duration: Duration(
                        seconds: 3,
                      ),
                      curve: Curves.bounceInOut,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: GestureDetector(
                            onLongPress: () {
                              Share.share(frase[index].image);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                frase[index].image,
                                fit: BoxFit.cover,
                                height: 210,
                                width: 250,
                              ),
                            ),
                          ),
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: ListTile(
                      title: Text(
                        frase[index].nome,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(frase[index].nome),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text(
                            "Frase",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(frase[index].frase),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          top: 3,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Share.share(frase[index].frase);
                          },
                          icon: Icon(
                            Icons.share,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
