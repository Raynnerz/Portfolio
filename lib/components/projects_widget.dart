import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:portfolio/components/card_widget.dart';
import 'package:portfolio/utils/custom_icons_icons.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({super.key});

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  final CarouselController buttonCarouselController = CarouselController(); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 300,
          child: FlutterCarousel(
            items: const [
              CardWidget(
                title: Text('Pink Flag',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.pink),
                ),
                description: '''Um projeto de Notícias, para atualizar e compartilhar eventos sobre um nicho específico de mulheres no automobilismo''',
                text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github,
                  color: Colors.white,
                ),
                cor: Colors.pink,
                websiteUrl: 'https://github.com/Raynnerz/Pink-Flag',
                titleIcon: Icon(
                  Icons.flag,
                  size: 50,
                ),
                corIcon: Colors.pink,        
              ),
              CardWidget(
                title: Text('Bazar Projetos Musicais',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.orange),
                ), 
                description: '''Sistema de compras de uma loja que vende instrumentos musicais''',
                text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github,
                  color: Colors.white,
                ),
                cor: Colors.orange,
              websiteUrl: 'https://github.com/Raynnerz/Bazar-Instrumentos-Musicais', 
              titleIcon: Icon(
                Icons.music_note,
                size: 50,
              ),
              corIcon: Colors.orange,           
              ),
              CardWidget(
                title: Text('Notebook-PI',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.green),
                ), 
                description: '''Um projeto que procura atender à necessidade de validar notebooks para os alunos dos cursos de tecnologias da informação''',
                text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github,
                  color: Colors.white,
                ),
                cor: Colors.green,
                websiteUrl: 'https://github.com/Raynnerz/Bazar-Instrumentos-Musicais',
                titleIcon: Icon(
                  Icons.laptop,
                  size: 50,
                ),
                corIcon: Colors.green,           
              ),
              CardWidget(
                title: Text('MauaNews',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.blue),
                ), 
                description: '''Um projeto de Notícias em forma de posts para atualizar usuários sobre eventos e informações''',
                text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github,
                  color: Colors.white,
                ),
                cor: Colors.blue,
                websiteUrl: 'https://github.com/RafCarrasco/MauaNews',
                titleIcon: Icon(
                  Icons.network_cell,
                  size: 50,
                ),      
                corIcon: Colors.blue,     
              ),

            ],  
            options: CarouselOptions(
              autoPlay: false,
              controller: buttonCarouselController,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 0,
              ),
            ),
        )
      ]
    );
  }
}