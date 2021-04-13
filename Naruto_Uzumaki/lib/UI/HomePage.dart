import 'package:appnaruto/UI/bijus.dart';
import 'package:appnaruto/UI/country.dart';
import 'package:appnaruto/UI/detail.dart';
import 'package:appnaruto/model/NarutoClass.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'akaPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double opacidade = 0.0;
  mostar() {
    setState(() {
      opacidade = opacidade == 0.0 ? 1.0 : 0.0;
    });
  }

  List<Naruto> _list = [];
  _HomePageState() {
    _list.add(Naruto(
        "Naruto Uzumaki",
        "Konohagakure (Vila Oculta da Folha)",
        "Por muito tempo, Naruto se mostrava um ninja pouco habilidoso, chegando a ser reprovado na Academia de Konoha tres vezes. Sua determinacao nao apenas em se tornar um guerreiro melhor, mas tambem em proteger aqueles que amava, mudaria esse quadro, fazendo dele um dos shinobis (ninjas homens) mais poderosos. Alem disso, o chakra de Naruto e, de certa forma, especial, o que possibilitou que ele se tornasse o portador de Kurama. O nivel de seu chakra e cerca de 4 vezes maior que o do seu mentor Kakashi. Aos poucos, vai desenvolvendo um maior controle de seu chakra e tambem sobre Kurama, entidade cujo poder antes so conseguia acessar em momentos de raiva. Ainda assim, caso nao controle sua raiva, e possivel que ele seja dominado pela influencia negativa da besta de nove-caudas.",
        "images/naruto.jpg"));
    _list.add(Naruto(
        "Sasuke Uchiha",
        "Konohagakure (Vila Oculta da Folha)",
        "Com um talento nato e um chakra de grande poder, Sasuke foi considerado uma especie de genio natural ainda bem jovem. Com apenas 7 anos de idade, ele ja conseguia usar a tecnica de Liberacao de Fogo do cla Uchiha. Apos seu treino com Kakashi e, posteriormente, com outros mestres, o ninja podia lutar em pe de igualdade com poderosos shinobis como Gaara e ate mesmo Orochimaru. Em sua trajetoria, desenvolve poderes como a invocacao da poderosa cobra Manda, alem do Mangekyo Sharingan em seu olho, que lhe confere diferentes poderosos recursos.",
        "images/sasuke.jpg"));

    _list.add(Naruto(
        "Sakura Haruno",
        "Konohagakure (Vila Oculta da Folha)",
        "No inicio de sua jornada como ninja, o forte de Sakura era basicamente sua inteligencia, mas suas habilidades em geral era consideradas inferiores as de Sasuke e Naruto. Mas seu treinamento com Tsunade mudaria isso. Embora seus companheiros de Time 7 tambem tenham crescido muito com ninjas, Sakura desenvolveu significantemente suas habilidades e alcancou um estilo de luta proprio. Alem disso, com seu excelente controle de chakra, ela comecou a seguir o caminho para se tornar uma ninja medica.",
        "images/sakura-haruno-1.jpg"));
    _list.add(Naruto(
        "Kakashi Hatake",
        "Konohagakure (Vila Oculta da Folha)",
        "Um ninja extremamente habilidoso, Kakashi ainda tem a seu favor o Sharingan que recebeu de Obito, um poder que se manifesta em seu olho, que passa a exibir uma cor e padroes diferentes. Essa habilidade lhe permite ver o fluxo de chakra em seus oponentes; lhe proporciona uma inacreditavel clareza de percepcao que lhe permite reconhecer genjutsus e diferentes formas de chakra; e possibilita que ele copie quase qualquer tecnica de luta ou defesa de seus adversarios e as use em batalha.",
        "images/kakashi-3_cke.jpg"));
    _list.add(Naruto(
        "Tsunade",
        "Konohagakure (Vila Oculta da Folha)",
        "Forca sobre-humana, grandes velocidade e resistencia, incriveis habilidades com diferentes tecnicas de luta e uma capacidade de rapidamente perceber o estilo de combate de seus oponentes sao recursos dos quais Tsunade dispoem em batalha. Sua fama como ninja medica tambem nao veio a toa. Tsunade e capaz de realizar qualquer procedimento medico para curar ferimentos que muitos outros considerariam mortais e impossiveis de reverter.",
        "images/tsunade-0_cke.jpg"));
    _list.add(Naruto(
        "Gaara",
        "Sunagakure (Vila Oculta da Areia)",
        "Gaara nasceu com reservas imensas de chakra, o que apenas aumentou com a insercao do Shukaku no jovem. Extremamente poderoso desde muito novo, tem forca e velocidade incriveis. Mas sua tecnica mais conhecida e seu ninjutsu de manipulacao com areia. E com sua areia, inclusive, que costuma realizar todos os seus golpes, pouco se mexendo em campo de batalha. Captura, esmagamento, imobilizacao, defesa e implosao estao entre os recursos que o ninja desenvolveu com a areia.",
        "images/gaara-1_cke.jpg"));
    _list.add(Naruto(
        "Temari",
        "Sunagakure (Vila Oculta da Areia)",
        "Especializada em combate a longa distancia, Temari e extremamente habilidosa e chegou a ser considerada a melhor usuaria de Liberacao do Vento da Quarta Divisao. Geralmente usa usas tecnicas associadas ao seu gigante leque de ferro, com o qual consegue criar intensas e perigosas correntes de vento e redemoinhos cortantes. O artefato ainda pode ser usado para voar e para se proteger, sendo capaz de desviar armas.",
        "images/temari-0_cke.jpg"));
    _list.add(Naruto(
        "Kankuro",
        "Sunagakure (Vila Oculta da Areia)",
        "Um habilidoso titereiro, Kankuro usa a Tecnica de Marionetes com grande destreza, sendo capaz de modificar e controlar os bonecos ao seu favor em batalha. Com a Tecnica de Substituicao do Corpo, ele pode chegar a trocar de lugar com suas marionetes. Alem disso, pode anexar suas linhas de chakra com as de outro titereiro. Faz uso ainda de tecnicas mais violentas, como a Tecnica Preta Secreta: Maquinario de Tiro Triplo, com a qual consegue prender e matar um numero maior de inimigos; ou ainda o Veneno da Nevoa Infernal: Cem Disparos Continuos, com seus bonecos disparando agulhas envenenadas.",
        "images/kankur_cke.jpg"));
    _list.add(Naruto(
        "Itachi Uchiha",
        "Konohagakure (Vila Oculta da Folha)",
        "Ninja prodigio, Itachi sempre demonstrou grande habilidade em taijutsu. Alguns de seus poderes eram:Ninjutsu: seu ninjutsu lhe permitia invocar corvos, que conseguia usar para combater os oponentes de diferentes formas.Shurikenjutsu: tecnica de lancar de surpresa armas como shuriken (as quais Itachi podia adicionar fogo), kunai e senbon.Liberacao do Fogo: Itachi dominava a Tecnica da Grande Bola de Fogo.Liberacao de Agua: E capaz de usar a Tecnica do Projetil do Dragao de Agua.Genjutsu: Itachi pode envolver o adversarios em ilusoes extremamente realistas. Essas ilusoes podem ser usadas ainda para compartilhar informacoes.Mangekyo Sharingan: Com seu olho esquerdo, Itachi pode usar o Tsukuyomi, um genjutsu capaz de prender a mente do inimigo no mundo de ilusoes. Ja com o direito, e capaz de usar o Amaterasu, por meio do qual queimava qualquer coisa que olhasse.",
        "images/itachi-uchiha-0_cke.jpg"));
    _list.add(Naruto(
        "Tenten",
        "Konohagakure (Vila Oculta da Folha)",
        "Uma poderosa guerreira em campo de batalha, Tenten conta tanto com suas habilidades com armas quanto com seus talentos em taijutsu, o que a fez ser rapidamente promovida ao posto de chunin (ninja nivel medio, que pode orientar outros ninjas e liderar missoes). Suas reservas de chakra ainda sao grandes o suficiente para selar grandes objetos, alem de realizar Funjutsus com sucesso, como quando invocou um dragao de fogo de seu pergaminho ou atacou usando papeis explosivos como armas.",
        "images/tenten-0_cke.jpg"));
    _list.add(Naruto(
        "Neji Hyuga",
        "Konohagakure (Vila Oculta da Folha)",
        "Mesmo sendo da casa secundaria do cla Hyuga, Neji era considerado um genio natural desde crianca, sendo inclusive visto como o melhor novato de sua classe na Academia. Alem de ser especializado em combate taijutsu de curto alcance, Neji tambem e capaz de realizar ninjutsus de Liberacao de Fogo, Agua e Terra. Alem disso, possui o Byakugan, um dojutsu kekkei genkai (tecnicas oculares) com o qual consegue ter uma visao de quase 360°, visao de raio-x e a capacidade de ver as redes de chakra.",
        "images/neji.jpg"));
    _list.add(Naruto(
        "Kabuto Yakushi",
        "Orfao de guerra",
        "abuto demonstra ter excelentes habilidades medicas, alem de dominar o Modo Sabio para ampliar seus poderes. Ele desenvolveu uma capacidade de reativar celulas mortas, o que lhe garante grandes habilidades de cura quase instantanea. Como arma, usa frequentemente bisturis de chakra. A partir de seu ninjutsu medico, ele ainda conseguiu desenvolver varias drogas com diferentes efeitos, como soro da verdade ou uma droga que suprime o poder de um usuario da Liberacao de Madeira. Pode reanimar cadaveres e usa-los ao seu favor.",
        "images/kabuto-yakushi_cke.jpg"));
    _list.add(Naruto(
        "Nagato/Pain",
        "Aldeia da Chuva",
        "Por possuir os olhos de Madara Uchiha e os genes de Senju, Nagato foi capaz de usar o lendario Rinnegan, um dojutsu que Rikudo Sennin, primeiro shinobi do mundo e fundador do ninjutsu, possuia. Isso possibilitou que Nagato aprendesse a dominar todas as cincos transformacoes da natureza basicas ainda crianca, algo sem precedentes. Foi por meio dele tambem que Nagato foi capaz de desenvolver a tecnica Seis Caminhos de Pain, na qual e capaz de controlar seis corpos diferentes, tendo separado as habilidades entre os cadaveres, com cada um representando um caminho.",
        "images/nagato-0_cke.jpg"));
    _list.add(Naruto(
        "Konan",
        " Aldeia da Chuva (雨隠れの里, Amegakure no Sato)",
        "Kunoichi rank S, Konan tem um talento natural para origami, desenvolvendo tecnicas diversas para as quais faz uso de papel. Danca do Shikigami: Konan transforma seu corpo e suas roupas em milhares de folhas de papel, controlando-as como quiser, seja as deixando mais leves e aerodinamicas para percorrer distancias, seja transformando-as em armas, ou ainda asfixiando inimigos ao cobri-los de papel. Clones de papel: Os clones criados por meio do papel podem lutar em seu lugar. Tecnica do Papel da Pessoa de Deus: jutsu mais poderoso de Konan, a tecnica reune 600 bilhoes de selos explosivos cuja explosao - que pode durar ate dez minutos - e capaz de dividir um lago.",
        "images/konan.jpg"));
    _list.add(Naruto(
        "Tobi",
        "Konohagakure (Vila Oculta da Folha)",
        "Embora em sua infancia e juventude, Obito demonstrasse poderes medianos, sob a orientacao de Madara ele se tornou um guerreiro extremamente poderoso, capaz de lutar ao mesmo tempo contra Naruto, Killer B, Guy e Kakashi. Apos ficar gravemente ferido durante uma missao em Kusagakure, Obito recebeu os cuidados de Madara, que o revestiu com a mesma substancia da qual os Zetsus Brancos sao feitos. Com isso, as reservas de chakra de Obito cresceram, e ele pode aproveitar vantagens do DNA de Harishama Senju. Capacidade de cura rapida, possibilidade de substituir membros e habilidade de usar a Liberacao da Madeira tambem foram ganhos. Alem de usar a Liberacao do Fogo natural do cla Uchiha, Obito podia usar a tecnica junto ao seu Mangekyo Sharingan para criar a Liberacao de Fogo: Danca Selvagem da Onda Explosiva. O Mangekyo Sharingan, por sua vez, lhe capacita para criar uma especie de entrada para um outro espaco dimensional, para onde pode se transportar.",
        "images/akatsuki-tobi_cke.jpg"));
    _list.add(Naruto(
        "Zetsu",
        "Konohagakure (Vila Oculta da Folha)",
        "O Zetsu Negro tem a habilidade de se ligar a outras pessoas, controlar seus corpos e, ate mesmo, usar suas habilidades. Logo, sua gama de poderes varia de acordo com os oponentes aos quais tem acesso. Ele tambem e capaz de gravar os eventos a que assiste e mostrar essas memorias a quem quiser. Ja o Zetsu Branco, por ter seu material genetico quase identico ao de Hashirama Senju, e capaz de usar a Liberacao de Madeira, mas num nivel mais fraco que o primeiro Hokage. Como Zetsu, a dupla usava o ninjutsu Efemera, por meio da qual era capaz de se fundir com a terra e, assim, viajar grandes distancias com muita velocidade.",
        "images/zetsu_cke.jpg"));
    _list.add(Naruto(
        "Deidara",
        " Vila Oculta da Pedra",
        "Vistas com grande reconhecido dentro da Akatsuki, e pelo proprio Pain, as habilidades de Deidara incluiam o kinjutsu, que lhe permitia criar bocas especiais em suas maos e peito; e sua argila explosiva, que podia ser moldada como seu usuario quisesse. Explosivos para ataques a distancia, clones de si mesmo e criacao de aves para transporte estavam entre os recursos que Deidara conseguia adquirir por meio de sua argila.",
        "images/deidara_cke.jpg"));
    _list.add(Naruto(
        "Orochimaru",
        "Konohagakure (Vila Oculta da Folha)",
        "Orochimaru e um dos shinobis mais poderosos da historia. As experiencias que executou em seu proprio corpo, em busca da imortalidade, lhe renderam resistencia, velocidade e forca sobre-humanas. Suas transformacoes chegaram ao extremo de ele conseguir tomar a forma de uma grande cobra branca composta de varias cobras menores. Capaz de usar ninjutsus diversos, ele pode ainda utilizar todas as cinco transformacoes da natureza e a Liberacao de Yin e Yang. Ja a sua afinidade com cobras lhe proporcionou desenvolver diferentes ataques, como a invocacao de cobras gigantes.",
        "images/orochimaru-akatsuki-0_cke.jpg"));
    _list.add(Naruto(
        "Sasori",
        "Sunagakure (Vila Oculta da Areia)",
        "Extremamente poderoso, Sasori chegou a ter mais de 300 bonecos em sua colecao pessoal. Considerado um titereiro mestre, Sasori tinha grande pericia em combate a longas distancias e seus bonecos eram temidos em campo de batalha. Alem dos bonecos que ele mesmo criava, Sasori era capaz de controlar pessoas para viverem como um de seus fantoches, contanto que tivesse conseguido enfraquece-las o suficiente. Dessa forma, ele poderia ter acesso as habilidades das pessoas que controlava.",
        "images/puppet-sasori_cke.jpg"));
    _list.add(Naruto(
        "Hidan",
        "(湯隠れの里, Yugakure  (Vila Oculta das Fontes Termais)",
        "Como consequencia de suas extensas experiencias com jutsus na religiao do Jashin, Hidan alcancou uma semi-imortalidade, resistindo a quaisquer tipos de ferimentos em batalhas, mas podendo ainda vir a padecer de falta de nutrientes. Alem de extremamente habilidoso no taijutsu com sua Foice Tripla, Hidan e capaz de usar realizar o terrivel Ritual Jashin. Por meio desta tecnica, para a qual ele desenha o simbolo Jashin no chao usando o sangue do oponente, ele cria uma ligacao com o corpo de seu adversario, usando seu proprio corpo como uma especie de vodu. Ou seja, tudo que ele fizer em seu corpo - incluindo ferimentos dolorosos e mortais - o inimigo ira sentir tambem.",
        "images/hidan-01_cke.jpg"));
    _list.add(Naruto(
        "Kakuzu",
        "Takigakure",
        "Como consequencia de suas extensas experiencias com jutsus na religiao do Jashin, Hidan alcancou uma semi-imortalidade, resistindo a quaisquer tipos de ferimentos em batalhas, mas podendo ainda vir a padecer de falta de nutrientes. Alem de extremamente habilidoso no taijutsu com sua Foice Tripla, Hidan e capaz de usar realizar o terrivel Ritual Jashin. Por meio desta tecnica, para a qual ele desenha o simbolo Jashin no chao usando o sangue do oponente, ele cria uma ligacao com o corpo de seu adversario, usando seu proprio corpo como uma especie de vodu. Ou seja, tudo que ele fizer em seu corpo - incluindo ferimentos dolorosos e mortais - o inimigo ira sentir tambem.",
        "images/kakuzu_cke.jpg"));
    _list.add(Naruto(
        "Choji Akimichi",
        "Konohagakure (Vila Oculta da Folha)",
        "Choji domina com destreza as tecnicas secretas do cla Akimichi, ligadas a capacidade de expandir seu corpo para ampliar a forca e o alcance dos ataques. Com a Tecnica do Tamanho Multiplo, por exemplo, pode se transformar em uma especie de bola gigante e atacar seus adversarios. Ja com a Tecnica do Tamanho Multiplo Parcial, e capaz de expandir apenas a parte do corpo que quiser, como bracos e pernas, para usar em golpes especificos.",
        "images/chji-akimichi-0_cke.jpg"));
    _list.add(Naruto(
        "Kisame Hoshigaki",
        "Clã Hoshigaki",
        "Com grande talento no taijutsu, Kisame dava preferencia a combates fisicos diretos, nos quais demonstrava grandes velocidade e forca fisica. Ainda assim, ele tinha uma quantidade monstruosa de chakra, comparavel ao poder da Raposa de Nove Caudas. Um poderoso espadachim, Kisame tinha como sua arma de assinatura a espada Samehada, um ser senciente capaz de detectar e absorver chakra. Ele era capaz ainda de se fundir por completo com a espada, aumentando consideravelmente seu poder e ganhando a aparencia similar a de um tubarao, alem de guelras que lhe permitiam respirar embaixo d'agua.",
        "images/kisame_cke.jpg"));
    _list.add(Naruto(
        "Shikamaru Nara",
        "Konohagakure (Vila Oculta da Folha)",
        "Um poderoso guerreiro, Shikamaru tem uma tecnica assinatura conhecida como Imitacao pela Sombra, por meio da qual consegue conectar sua sombra a do oponente. A partir dai, ele consegue controlar os movimentos do adversario. Conforme cresce e amplia o dominio da tecnica, passa a conseguir usa-la tambem para pegar ou atirar objetos pesados ou ainda prende-los aos inimigos.",
        "images/shikamaru.jpg"));
    _list.add(Naruto(
        "Ino Yamanaka",
        "Konohagakure (Vila Oculta da Folha)",
        "As tecnicas em que Ino mais se destaca sao justamente as que herdou de seu cla, voltadas para atingir a mente. Por meio da Tecnica de Troca da Mente do Corpo, por exemplo, Ino pode possuir temporariamente a mente de outra pessoa, controlando o oponente e conseguindo espionar e obter importantes informacoes. Ja com a Tecnica de Perturbacao da Mente do Corpo, a kuniochi e capaz de fazer com que seu adversario ataque alvos proximos a ele. A Tecnica de Clone da Transferencia de Mente, por sua vez, permite que Ino clone sua consciencia e a transfira para varias pessoas ao mesmo tempo.",
        "images/ino-yamanak_cke.jpg"));
    _list.add(Naruto(
        "Shino Aburame",
        "Konohagakure (Vila Oculta da Folha)",
        "Um shinobi extremamente habilidoso, Shino tem como sua tecnica assinatura o ninjutsu em que usa seus insetos em diferentes golpes. Como todos do cla Aburame, o jovem foi infundido com uma raca especial de insetos logo depois de seu nascimento. Usando seu corpo como uma especie de ninho, os insetos se alimentam de seu chakra em uma relacao de simbiose, na qual Shino tambem pode usar os animais de variadas formas. Com seus insetos, ele e capaz de prender o adversario e consumir seu chakra, transferir chakra, criar um clone de si mesmo, cobrir o inimigo em uma gaiola de insetos, confundir adversarios com a criacao de padroes falsos de chakra, entre outros recursos.",
        "images/shino.jpg"));
    _list.add(Naruto(
        "Hinata Hyuga",
        "Konohagakure (Vila Oculta da Folha)",
        "Com um excelente controle de chakra, Hinata e capaz de criar especies de agulhas de chakra, alem de emitir correntes e criar laminas de energia. Como os demais membros de seu cla, ela e especializada em combate desarmado de curto alcance. Outro poder herdado de sua familia e o seu Byakugan, uma Kekkei Genkai dojutsu (poder ocular) que lhe proporciona visao perto de 360°, visao de raio-x e a poder de ver o Sistema de Circulacao de Chakra.",
        "images/hinata-hyuga_cke.jpg"));
    _list.add(Naruto(
        "Might Guy",
        "Konohagakure (Vila Oculta da Folha)",
        "Um dos shinobi mais fortes de Konoha, Guy tambem teve dificuldades com ninjutsus e genjutsus quando crianca. Por esse motivo, dedicou-se a treinamentos extremos e pouco ortodoxos de taijutsu, o que lhe rendeu grandes habilidades e reservas impressionantes de chakra e \nestamina. Ainda crianca foi capaz de abrir e utilizar os Oito Portoes - limites do Sistema de Circulacao de Chakra de um individuo - feito nao alcancado por alguns dos maiores ninjas.",
        "images/might-guy_cke.jpg"));
    _list.add(Naruto(
        "Rock Lee",
        "Konohagakure (Vila Oculta da Folha)",
        "O fato de nao ser capaz de usar ninjutsus e genjutsus fizeram com que Rock Lee fosse desprezado varias vezes na Academia. Mas sua determinacao em compensar isso com taijutsu valeu a pena, e o ninja realmente nao deve ser subestimado. Alem de ja ter sido capaz de derrotar ninjas como Sasuke, Rock Lee protagonizou uma das batalhas mais populares do anime entre os fas, quando lutou contra Gaara e surpreendeu a todos com as cartas que tinha na manga em suas tecnicas de taijutsu.",
        "images/rock-lee-0_cke.jpg"));

    _list.add(Naruto(
        "Jiraya",
        "Konohagakure (Vila Oculta da Folha)",
        "Ficou conhecido como Sabio dos Sapos por ter como uma tecnica assinatura a invocacao de sapos. Mas foi o nivel de seu poder e de suas habilidades que o fizeram ser considerado um dos tres Sannin Lendarios. Jiraya e capaz de subjugar alguns dos ninjas mais poderosos com sua forca sobre-humana. Com uma impressionante reserva de chakra, foi capaz de aprender o Modo Sabio, um estado em que o ninja mistura a forca natural do mundo ao seu chakra, podendo explorar essa energia, desenvolver novas tecnicas e aumentar a intensidade de outros recursos de batalha e defesa de que ja disponha.",
        "images/jiraya-0.jpg"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading:
                    Icon(Icons.group_work_outlined, color: Colors.deepOrange),
                title: Text(
                  "Akatsuki",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text("A organização mais perigosa do anime"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Akats()));
                },
              ),
              ListTile(
                leading: Icon(Icons.ac_unit, color: Colors.deepOrange),
                title: Text(
                  "Países",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text("As nações do anime"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Country()));
                },
              ),
              ListTile(
                leading: Icon(Icons.fire_extinguisher_outlined,
                    color: Colors.deepOrange),
                title: Text(
                  "Frases",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text("melhores frases"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bijus()));
                },
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  "Created by",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.deepOrange),
                title: Text(
                  "Loid Padre",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text("Mobile and Web developer"),
                onTap: () {
                  mostar();
                },
              ),
              AnimatedOpacity(
                duration: Duration(seconds: 1),
                curve: Curves.bounceInOut,
                opacity: opacidade,
                child: Align(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Loid Lourenço Rodrigues Padre",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                                "Mobile Developer with flutter tecnology."),
                            subtitle: Text("loidpadrepadre@gmail.com"),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, index) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.deepOrange,
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Naruto Uzumaki",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                background: ClipRRect(
                  child: Image.asset(
                    "images/banner.jpg",
                    fit: BoxFit.cover,
                    color: Colors.deepOrange,
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
              ),
            ),
          ];
        },
        body: GridView.builder(
          itemCount: _list.length,
          padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                Share.share(_list[index].image);
              },
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail(_list[index])));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: index == 0 ||
                          index == 1 ||
                          index == 2 ||
                          index == 6 ||
                          index == 7 ||
                          index == 8 ||
                          index == 11 ||
                          index == 14 ||
                          index == 17 ||
                          index == 20
                      ? Colors.deepOrange
                      : Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Hero(
                        tag: _list[index],
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              _list[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                      child: Text(
                        _list[index].nome,
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
