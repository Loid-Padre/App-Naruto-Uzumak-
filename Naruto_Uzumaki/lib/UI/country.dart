import 'package:appnaruto/model/countryClass.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';



class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  double _fim = 1.2;
  List<Pais> _pais = [];
  _CountryState() {
    _pais.add(Pais(
        "País do Fogo",
        "Konohagakure (Vila Oculta da Folha).",
        "Kurama (A besta de nove caudas).",
        "Hokage",
        "Um dos países mais poderosos do mundo e o lar dos personagens principais de Naruto. O País do Fogo foi um dos primeiros países a fazer uma aliança com os ninjas e criar uma Vila Oculta. No caso, foi Konohagakure, fundada pelos Clãs Senju e Uchiha. Esse costume foi logo adotado pelos países vizinhos. Apesar de não ser um o maior país, possui a maior vila oculta de todas.O país possui um clima quente e dias claros, e sua geografia é marcada por vastas áreas de florestas fechadas (sendo uma delas chamada de Floresta da Morte). Além da vila, suas localidades mais marcantes são o Templo do Fogo, um monastério que abriga monges ninjas, o paredão com as faces de todos os Hokages da história, e o Vale do Fim, uma cachoeira onde se encontram duas enormes estátuas de Madara Uchiha e Hashirama Senju, representando a épica batalha que os dois travaram no passado.",
        "images/paisdofogo.jpg"));
    _pais.add(Pais(
        "País do Vento",
        "Sunagakure (Vila Oculta da Areia).",
        "Shukaku (A besta de uma cauda)",
        "Kazekage",
        "Um país de clima predominantemente desértico e com baixa produtividade. Devido às poucas chuvas, a sociedade se concentra em pequenas vilas construídas em oásis. Atualmente possui boas relações com suas nações vizinhas, mantendo um forte tratado de comércio com o País do Fogo. Sua Vila Oculta, Sunagakure, foi construída em um cânion após uma união entre os ninjas nômades do deserto, motivada pelo surgimento de Konohagakure no País do Fogo. Outra localidade importante de sua geografia é o Deserto do Demônio, área extremamente perigosa onde costuma ser realizado os Exames Chunin.",
        "images/paisdovento.jpg"));
    _pais.add(Pais(
        "País do Raio",
        "Kumogakure (Vila Oculta da Nuvem)",
        "Matatabi (A besta de duas caudas) e Gyuki (A besta de oito caudas)",
        "Raikage",
        "Em uma península ao nordeste do continente se encontra o País do Raio, uma região montanhosa com um clima propício para a formação de tempestades elétricas. Muitos rios surgem em suas montanhas e correm diretamente para o mar, onde formam uma bela zona costeira. Além disso, o país também é conhecido por suas várias fontes termais. Kumogakure, sua Vila Oculta, está localizada no topo de uma alta montanha onde, como o próprio nome indica, comumente fica escondida pelas nuvens. Outros pontos de interesse de sua geografia são o Vale das Nuvens e dos Raios, uma área com grandes lagos e onde é comum ver névoa (há também uma caverna onde Killer B, o jinchuriki do oito-caudas treina); e existe também Genbu, a Tartaruga-ilha, um animal tão grande que carrega uma ilha inteira nas suas costas, servindo de casa para outras espécies de animais e campo de treinamento para os ninjas desse país.",
        "images/paisdotrovao.jpg"));
    _pais.add(Pais(
        "País da Água",
        "Kirigakure (Vila Oculta da Névoa).",
        "Isobu (A besta de três caudas) e Saiken (A besta de seis caudas)",
        "Mizukage",
        "O país da água é constituído por várias ilhas relativamente distantes do continente, onde se encontram as outras quatro grandes nações ninjas. É uma terra de clima fresco, porém, em certas partes, a temperatura é bem mais baixa, fazendo frio e nevando vigorosamente. Como o nome de sua Vila Oculta indica, as ilhas que compõe esse país normalmente ficam envoltas em densas névoas. O país possui uma história sangrenta, marcado por muitos conflitos internos e guerras civis, nas quais ninjas com kekkei genkai eram utilizados ostensivamente nos combates. Isso fez com que a população desenvolvesse um ódio por esses ninjas, que passaram a ser perseguidos e a se esconderem.",
        "images/paisdaagua.jpg"));
    _pais.add(Pais(
        "País da Terra",
        "Iwagakure (Vila Oculta da Pedra)",
        "Son Goku (A besta de quatro caudas) e Konkuo (A besta de cinco caudas)",
        "Tsuchikage",
        "Esse é o país que menos foi mostrado na série e, portanto, umas das regiões mais misteriosas até então. O País da Terra fica localizado no noroeste do continente, em uma região predominantemente rochosa e árida, com uma cadeia de montanhas em suas fronteiras que dificulta a comunicação com as nações vizinhas. O vento que vem do norte costuma soprar por essas montanhas, carregando pequenas rochas das terras áridas para os países vizinhos. Tal fenômeno é conhecido como chuva de pedra.",
        "images/paisdaterra.jpg"));
    _pais.add(Pais(
        "País do Ferro",
        "Konohagakure (Vila Oculta da Folha).",
        "Kurama (A besta de nove caudas).",
        "Hokage",
        "Um país situado fora do mapa do mundo ninja, talvez assim seja exatamente por não ser uma nação cujo poder militar não se baseia em shinobis. O País do Ferro, em vez dos ninjas que sempre vemos na série, possui Samurais, poderosos guerreiros que canalizam seu chakra através de suas poderosas espadas. Justamente por terem uma cultura tão voltada as espadas é que a sua terra foi chamada de País do Ferro.Devido às diferenças ideológicas entre ninjas e samurais, o País do Ferro e as Nações ninja possuem um acordo de não intervenção mútua. Por causa desse envolvimento mínimo com os ninjas, o país normalmente serve como terreno neutro para discussões diplomáticas entre as nações ninjas.O País do Ferro fica localizado em uma região extremamente fria, coberta de neve e montanhosa. Mais precisamente, na região dos Três Lobos, três montanhas gigantescas de formação inusitada, cuja aparência remete a boca de três feras.",
        "images/paisdoaco.jpg"));
    _pais.add(Pais(
        "País do Som",
        "Otogakure (Vila Oculta do Som)",
        "Jinchūriki: Chomei (A besta de sete caudas)",
        "Hokage",
        "Uma das várias pequenas nações ninjas nunca nomeadas no anime ou mangá que fazem fronteira com o País do Fogo. A Vila Oculta da Cachoeira possui a fama de produzir poderosos ninjas jonin. Também é o único país fora das cinco grandes nações a ter posse de uma das bestas de várias caudas. Por mais que faça fronteira com outros quatro países, a Vila Oculta da Cachoeira nunca foi conquistada em toda sua história.",
        "images/viladosom.jpg"));
    _pais.add(Pais(
        "Vila Oculta da Cachoeira",
        "Konohagakure (Vila Oculta da Folha).",
        "Kurama (A besta de nove caudas).",
        "Hokage",
        "Um dos países mais poderosos do mundo e o lar dos personagens principais de Naruto. O País do Fogo foi um dos primeiros países a fazer uma aliança com os ninjas e criar uma Vila Oculta. No caso, foi Konohagakure, fundada pelos Clãs Senju e Uchiha. Esse costume foi logo adotado pelos países vizinhos. Apesar de não ser um o maior país, possui a maior vila oculta de todas.O país possui um clima quente e dias claros, e sua geografia é marcada por vastas áreas de florestas fechadas (sendo uma delas chamada de Floresta da Morte). Além da vila, suas localidades mais marcantes são o Templo do Fogo, um monastério que abriga monges ninjas, o paredão com as faces de todos os Hokages da história, e o Vale do Fim, uma cachoeira onde se encontram duas enormes estátuas de Madara Uchiha e Hashirama Senju, representando a épica batalha que os dois travaram no passado.",
        "images/viladacachoeira.jpg"));
    _pais.add(Pais(
        "Vila Oculta da Chuva",
        "Konohagakure (Vila Oculta da Folha).",
        "Kurama (A besta de nove caudas).",
        "Hokage",
        "Também situada em um país não nomeado, a Vila Oculta da Chuva fica em uma região extremamente chuvosa, cuja água escoa para um grande lago. Apesar de ser uma vila pequena, é bastante industrializada e seus ninjas são reconhecidos por suas técnicas originais. Normalmente os shinobis dessa vila são contratados para missões de assassinatos.",
        "images/vilachuva.jpg"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          
          backgroundColor: Colors.deepOrange,
          title: Text(
            "Paises",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: _pais.length,
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
                          seconds: 2,
                        ),
                        curve: Curves.bounceInOut,
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: GestureDetector(
                              onLongPress: () {
                                Share.share(_pais[index].imag);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  _pais[index].imag,
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
                          "País",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(_pais[index].nome),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Vila Oculta",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(_pais[index].vila),
                    ),
                    ListTile(
                      title: Text(
                        "Líder shinobi",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(_pais[index].lider),
                    ),
                    ListTile(
                      title: Text(
                        "Jinchūriki",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(_pais[index].jinchuriki),
                    ),
                    ListTile(
                      title: Text(_pais[index].decri),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
