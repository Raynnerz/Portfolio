import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_icons_icons.dart';
import 'package:portfolio/components/socialbutton_widget.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  width: 200,
                  height: 200,
                  child:  Image.asset('images/user_avatar.png', width: 150)
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text('Raynner Sanchez Rodrigues', 
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Estudante do 2º de Ciência da Computação',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(fontSize: 20)
                      ),
                    ),
                    Text('no Instituto Mauá de Tecnologia',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(fontSize: 20)
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.local_phone,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('+55(11)99207-5092',
                          style: GoogleFonts.ibmPlexMono(
                            textStyle: TextStyle(fontSize: 16)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 121,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('São Bernardo do Campo, Brasil',
                          style: GoogleFonts.ibmPlexMono(
                            textStyle: TextStyle(fontSize: 16)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 94,
                        ),
                        Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('rodriguesraynner@gmail.com',
                          style: GoogleFonts.ibmPlexMono(
                            textStyle: TextStyle(fontSize: 16)
                          ),
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








