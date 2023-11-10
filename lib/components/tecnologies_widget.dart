import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:portfolio/components/card_widget.dart';
import 'package:portfolio/utils/custom_icons_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TecnologiesWidget extends StatefulWidget {
  const TecnologiesWidget({super.key});

  @override
  State<TecnologiesWidget> createState() => _TecnologiesWidgetState();
}

class _TecnologiesWidgetState extends State<TecnologiesWidget> {
  final CarouselController buttonCarouselController = CarouselController(); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterCarousel(items: [
          const CardWidget(
            title: Text('Java',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.red),
            ),
            description: Text('Java é reconhecida por suas propriedades de portabilidade, segurança e robustez. Sua máquina virtual (JVM) permite a execução de código em diversas plataformas. A linguagem oferece gerenciamento automático de memória e verificações de tipos rigorosas, minimizando erros de programação. Java é também orientada a objetos, promovendo a reutilização de código e facilitando a manutenção.'),
            text: 'Repositório Github',
            corTexto: Colors.white,
            icon: Icon(
              CustomIcons.github,
              color: Colors.white,
            ),
            cor: Colors.black,
            websiteUrl: 'https://github.com/Raynnerz',           
          ),
          const CardWidget(
            title: Text('Python',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 152, 199, 33)),
            ), 
            description: Text('Python é conhecido por sua simplicidade, legibilidade e facilidade de aprendizado. A linguagem é altamente versátil, com uma ampla variedade de bibliotecas e frameworks para diversas aplicações, como web (Django, Flask), ciência de dados (NumPy, Pandas) e automação (Automate the Boring Stuff). Python é interpretado, o que permite desenvolvimento ágil e é reconhecido por seu forte suporte à programação orientada a objetos e funcional. Além disso, Python é open source e possui uma comunidade ativa de desenvolvedores.'),
            text: 'Repositório Github',
            corTexto: Colors.white,
            icon: Icon(
              CustomIcons.github,
              color: Colors.white,
            ),
            cor: Colors.black,
            websiteUrl: 'https://github.com/Raynnerz',           
          ),
          const CardWidget(
            title: Text('Html',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 243, 159, 33)),
            ), 
            description: Text('HTML é uma linguagem de marcação usada para estruturar páginas web de maneira simples e acessível, sendo essencial na criação de conteúdo online, e pode ser combinada com CSS e JavaScript para adicionar estilo e interatividade.'),
            text: 'Repositório Github',
            corTexto: Colors.white,
            icon: Icon(
              CustomIcons.github,
              color: Colors.white,
            ),
            cor: Colors.black,
            websiteUrl: 'https://github.com/Raynnerz',           
          ),
          const CardWidget(
            title: Text('Css',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.blue),
            ), 
            description: Text('CSS (Cascading Style Sheets) é uma linguagem usada para estilizar páginas web, controlando o layout, cores e aparência. Suas propriedades incluem a separação do conteúdo (HTML) e estilo, permitindo o design flexível e responsivo das páginas. CSS é amplamente usado para criar designs atraentes e consistentes em sites, tornando a experiência do usuário mais agradável e acessível.'),
            text: 'Repositório Github',
            corTexto: Colors.white,
            icon: Icon(
              CustomIcons.github,
              color: Colors.white,
            ),
            cor: Colors.black,
            websiteUrl: 'https://github.com/Raynnerz',           
          ),
          const CardWidget(
            title: Text('MongoDB',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 67, 244, 54)),
            ), 
            description: Text('CSS (Cascading Style Sheets) é uma linguagem usada para estilizar páginas web, controlando o layout, cores e aparência. Suas propriedades incluem a separação do conteúdo (HTML) e estilo, permitindo o design flexível e responsivo das páginas. CSS é amplamente usado para criar designs atraentes e consistentes em sites, tornando a experiência do usuário mais agradável e acessível.'),
            text: 'Repositório Github',
            corTexto: Colors.white,
            icon: Icon(
              CustomIcons.github,
              color: Colors.white,
            ),
            cor: Colors.black,
            websiteUrl: 'https://github.com/Raynnerz',           
          ),
          
        ], options: CarouselOptions(
          autoPlay: false,
          controller: buttonCarouselController,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 0,
          ),
        )
      ]
    );
  }
}