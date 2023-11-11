import 'package:flutter/material.dart';
import 'package:portfolio/components/socialbutton_widget.dart';
import 'package:portfolio/utils/custom_icons_icons.dart';

class TimelineWidget extends StatefulWidget {
  @override
  _TimelineWidgetState createState() => _TimelineWidgetState();
}

class _TimelineWidgetState extends State<TimelineWidget> {
  

final List<TimelineEvent> events = [
    TimelineEvent(
      title: 'MauaNews',
      description: 'Um projeto de Notícias em forma de posts para atualizar usuários sobre eventos e informações',
      imageUrl: 'assets/images/MauaNews.png',
      button: SocialButton(
        text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github, 
                  color: Colors.white,
                ),
                cor: Colors.black,
                websiteUrl: 'https://github.com/RafCarrasco/MauaNews',
      )
      ),
    TimelineEvent(
      title: 'Pink Flag',
      description: 'Um projeto de Notícias, para atualizar e compartilhar eventos sobre um nicho específico de mulheres no automobilismo',
      imageUrl: 'assets/images/pink_flag.png',
      button: SocialButton(
        text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github, 
                  color: Colors.white,
                ),
                cor: Colors.black,
                websiteUrl: 'https://github.com/Raynnerz/Pink-Flag',
      )
    ),
    TimelineEvent(
      title: 'Bazar Projetos Musicais',
      description: 'Sistema de compras de uma loja que vende instrumentos musicais',
      imageUrl: 'assets/images/bazar_musical.png',
      button: SocialButton(
        text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github, 
                  color: Colors.white,
                ),
                cor: Colors.black,
                websiteUrl: 'https://github.com/Raynnerz/Bazar-Instrumentos-Musicais',
      )
    ),
    TimelineEvent(
      title: 'Notebook-PI',
      description: 'Um projeto que procura atender à necessidade de validar notebooks para os alunos dos cursos de tecnologias da informação',
      imageUrl: 'assets/images/notebookPI.png',
      button: SocialButton(
        text: 'Repositório Github',
                corTexto: Colors.white,
                icon: Icon(
                  CustomIcons.github, 
                  color: Colors.white,
                ),
                cor: Colors.black,
                websiteUrl: 'https://github.com/Raynnerz/Notebook-PI',
      )
    ),
  ];

  late PageController _pageController;
  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: events.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return TimelineDot(isActive: index == currentPage.floor());
            },
          ),
        ),
        Expanded(
          flex: 5,
          child: PageView.builder(
            controller: _pageController,
            itemCount: events.length,
            itemBuilder: (context, index) {
              return TimelineCard(event: events[index]);
            },
          ),
        ),
      ],
    );
  }
}

class TimelineEvent {
  final String title;
  final String description;
  final String imageUrl;
  final Widget button;

  TimelineEvent({
    required this.button,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class TimelineDot extends StatelessWidget {
  final bool isActive;

  const TimelineDot({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.grey,
      ),
    );
  }
}

class TimelineCard extends StatelessWidget {
  final TimelineEvent event;

  const TimelineCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Image.network(event.imageUrl, height: 150, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(event.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

