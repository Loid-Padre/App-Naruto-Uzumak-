import 'package:appnaruto/UI/detailAka.dart';
import 'package:appnaruto/model/akaClass.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';



class Akats extends StatefulWidget {
  @override
  _AkatsState createState() => _AkatsState();
}

class _AkatsState extends State<Akats> {
  List<Aka> _aka = [];
  _AkatsState() {
    _aka.add(Aka(
        "Nagato/Pain",
        "Por possuir os olhos de Madara Uchiha e os genes de Senju, Nagato foi capaz de usar o lendario Rinnegan, um dojutsu que Rikudo Sennin, primeiro shinobi do mundo e fundador do ninjutsu, possuia. Isso possibilitou que Nagato aprendesse a dominar todas as cincos transformacoes da natureza basicas ainda crianca, algo sem precedentes. Foi por meio dele tambem que Nagato foi capaz de desenvolver a tecnica Seis Caminhos de Pain, na qual e capaz de controlar seis corpos diferentes, tendo separado as habilidades entre os cadaveres, com cada um representando um caminho.",
        "images/nagato-0_cke.jpg"));
    _aka.add(Aka(
        "Konan",
        "Kunoichi rank S, Konan tem um talento natural para origami, desenvolvendo tecnicas diversas para as quais faz uso de papel. Danca do Shikigami: Konan transforma seu corpo e suas roupas em milhares de folhas de papel, controlando-as como quiser, seja as deixando mais leves e aerodinamicas para percorrer distancias, seja transformando-as em armas, ou ainda asfixiando inimigos ao cobri-los de papel. Clones de papel: Os clones criados por meio do papel podem lutar em seu lugar. Tecnica do Papel da Pessoa de Deus: jutsu mais poderoso de Konan, a tecnica reune 600 bilhoes de selos explosivos cuja explosao - que pode durar ate dez minutos - e capaz de dividir um lago.",
        "images/konan.jpg"));
    _aka.add(Aka(
        "Tobi",
        "Embora em sua infancia e juventude, Obito demonstrasse poderes medianos, sob a orientacao de Madara ele se tornou um guerreiro extremamente poderoso, capaz de lutar ao mesmo tempo contra Naruto, Killer B, Guy e Kakashi. Apos ficar gravemente ferido durante uma missao em Kusagakure, Obito recebeu os cuidados de Madara, que o revestiu com a mesma substancia da qual os Zetsus Brancos sao feitos. Com isso, as reservas de chakra de Obito cresceram, e ele pode aproveitar vantagens do DNA de Harishama Senju. Capacidade de cura rapida, possibilidade de substituir membros e habilidade de usar a Liberacao da Madeira tambem foram ganhos. Alem de usar a Liberacao do Fogo natural do cla Uchiha, Obito podia usar a tecnica junto ao seu Mangekyo Sharingan para criar a Liberacao de Fogo: Danca Selvagem da Onda Explosiva. O Mangekyo Sharingan, por sua vez, lhe capacita para criar uma especie de entrada para um outro espaco dimensional, para onde pode se transportar.",
        "images/akatsuki-tobi_cke.jpg"));
    _aka.add(Aka(
        "Zetsu",
        "O Zetsu Negro tem a habilidade de se ligar a outras pessoas, controlar seus corpos e, ate mesmo, usar suas habilidades. Logo, sua gama de poderes varia de acordo com os oponentes aos quais tem acesso. Ele tambem e capaz de gravar os eventos a que assiste e mostrar essas memorias a quem quiser. Ja o Zetsu Branco, por ter seu material genetico quase identico ao de Hashirama Senju, e capaz de usar a Liberacao de Madeira, mas num nivel mais fraco que o primeiro Hokage. Como Zetsu, a dupla usava o ninjutsu Efemera, por meio da qual era capaz de se fundir com a terra e, assim, viajar grandes distancias com muita velocidade.",
        "images/zetsu_cke.jpg"));
    _aka.add(Aka(
        "Deidara",
        "Vistas com grande reconhecido dentro da Akatsuki, e pelo proprio Pain, as habilidades de Deidara incluiam o kinjutsu, que lhe permitia criar bocas especiais em suas maos e peito; e sua argila explosiva, que podia ser moldada como seu usuario quisesse. Explosivos para ataques a distancia, clones de si mesmo e criacao de aves para transporte estavam entre os recursos que Deidara conseguia adquirir por meio de sua argila.",
        "images/deidara_cke.jpg"));
    _aka.add(Aka(
        "Orochimaru",
        "Orochimaru e um dos shinobis mais poderosos da historia. As experiencias que executou em seu proprio corpo, em busca da imortalidade, lhe renderam resistencia, velocidade e forca sobre-humanas. Suas transformacoes chegaram ao extremo de ele conseguir tomar a forma de uma grande cobra branca composta de varias cobras menores. Capaz de usar ninjutsus diversos, ele pode ainda utilizar todas as cinco transformacoes da natureza e a Liberacao de Yin e Yang. Ja a sua afinidade com cobras lhe proporcionou desenvolver diferentes ataques, como a invocacao de cobras gigantes.",
        "images/orochimaru-akatsuki-0_cke.jpg"));
    _aka.add(Aka(
        "Sasori",
        "Extremamente poderoso, Sasori chegou a ter mais de 300 bonecos em sua colecao pessoal. Considerado um titereiro mestre, Sasori tinha grande pericia em combate a longas distancias e seus bonecos eram temidos em campo de batalha. Alem dos bonecos que ele mesmo criava, Sasori era capaz de controlar pessoas para viverem como um de seus fantoches, contanto que tivesse conseguido enfraquece-las o suficiente. Dessa forma, ele poderia ter acesso as habilidades das pessoas que controlava.",
        "images/puppet-sasori_cke.jpg"));
    _aka.add(Aka(
        "Hidan",
        "Como consequencia de suas extensas experiencias com jutsus na religiao do Jashin, Hidan alcancou uma semi-imortalidade, resistindo a quaisquer tipos de ferimentos em batalhas, mas podendo ainda vir a padecer de falta de nutrientes. Alem de extremamente habilidoso no taijutsu com sua Foice Tripla, Hidan e capaz de usar realizar o terrivel Ritual Jashin. Por meio desta tecnica, para a qual ele desenha o simbolo Jashin no chao usando o sangue do oponente, ele cria uma ligacao com o corpo de seu adversario, usando seu proprio corpo como uma especie de vodu. Ou seja, tudo que ele fizer em seu corpo - incluindo ferimentos dolorosos e mortais - o inimigo ira sentir tambem.",
        "images/hidan-01_cke.jpg"));
    _aka.add(Aka(
        "Kakuzu",
        "Como consequencia de suas extensas experiencias com jutsus na religiao do Jashin, Hidan alcancou uma semi-imortalidade, resistindo a quaisquer tipos de ferimentos em batalhas, mas podendo ainda vir a padecer de falta de nutrientes. Alem de extremamente habilidoso no taijutsu com sua Foice Tripla, Hidan e capaz de usar realizar o terrivel Ritual Jashin. Por meio desta tecnica, para a qual ele desenha o simbolo Jashin no chao usando o sangue do oponente, ele cria uma ligacao com o corpo de seu adversario, usando seu proprio corpo como uma especie de vodu. Ou seja, tudo que ele fizer em seu corpo - incluindo ferimentos dolorosos e mortais - o inimigo ira sentir tambem.",
        "images/kakuzu_cke.jpg"));
    _aka.add(Aka(
        "Kisame Hoshigaki",
        "Com grande talento no taijutsu, Kisame dava preferencia a combates fisicos diretos, nos quais demonstrava grandes velocidade e forca fisica. Ainda assim, ele tinha uma quantidade monstruosa de chakra, comparavel ao poder da Raposa de Nove Caudas. Um poderoso espadachim, Kisame tinha como sua arma de assinatura a espada Samehada, um ser senciente capaz de detectar e absorver chakra. Ele era capaz ainda de se fundir por completo com a espada, aumentando consideravelmente seu poder e ganhando a aparencia similar a de um tubarao, alem de guelras que lhe permitiam respirar embaixo d'agua.",
        "images/kisame_cke.jpg"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (contex, index) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Akatsuki",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                centerTitle: true,
                background: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        "images/nagato-0_cke.jpg",
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
                              Colors.red,
                              Colors.lightBlue,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: GridView.builder(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          itemCount: _aka.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                Share.share(_aka[index].image);
              },
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailAka(_aka[index])));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: index == 0 ||
                          index == 1 ||
                          index == 2 ||
                          index == 6 ||
                          index == 7 ||
                          index == 8
                      ? Colors.black
                      : Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Hero(
                        tag: _aka[index],
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              _aka[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                      child: Text(
                        _aka[index].nome,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
