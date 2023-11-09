import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_icons_icons.dart';
import 'package:portfolio/components/socialbutton_widget.dart';

class ProfileWidget extends StatelessWidget {

  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 300,
                height: 200,
                child:  Image.asset('images/user_avatar.png', width: 150)
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text('Raynner Sanchez Rodrigues', 
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 25),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Estudante do 2º de Ciência da Computação no Instituto Mauá de Tecnologia',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_phone,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('+55(11)99207-5092',
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('São Bernardo do Campo, Brasil',
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('rodriguesraynner@gmail.com',
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SocialButton(
                        text: 'Github',
                        corTexto: Colors.white,
                        icon: Icon(
                          CustomIcons.github,
                          color: Colors.white,
                        ),
                        cor: Colors.black,
                        websiteUrl: 'https://github.com/Raynnerz',
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      SocialButton(
                        text: 'Instagram',
                        corTexto: Colors.white,
                        icon: Icon(
                          CustomIcons.instagram,
                          color: Colors.white,
                        ),
                        cor: Color.fromARGB(255, 212, 12, 72),
                        websiteUrl: 'https://www.instagram.com/_raynner/',
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      SocialButton(
                        text: 'Linkedin',
                        corTexto: Colors.white,
                        icon: Icon(
                          CustomIcons.linkedin,
                          color: Colors.white,
                        ),
                        cor: Color.fromARGB(255, 7, 32, 255),
                        websiteUrl: 'https://www.linkedin.com/in/raynner-rodrigues-380744250/',
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}