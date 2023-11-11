import 'package:flutter/material.dart';
import 'package:portfolio/components/socialbutton_widget.dart';

class CardWidget extends StatelessWidget {
  final Text title;
  final Icon titleIcon;
  final Color? corIcon;
  final String description;
  final String text;
  final Icon icon;
  final Color? cor;
  final Color? corTexto;
  final String websiteUrl;

  const CardWidget({
    super.key, 
    required this.title, 
    required this.description, 
    required this.icon, 
    required this.text, 
    required this.websiteUrl, 
    this.cor, this.corTexto, required this.titleIcon, this.corIcon
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 300,
        child: Card(
          color: Color.fromARGB(255, 26, 24, 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                title: title,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: corIcon,
                  border: Border.all(width: 2)
              ),
              child: titleIcon,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(description.toString(), style: TextStyle(color: Color.fromARGB(255, 170, 170, 170)),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: SocialButton(
                      text: text,
                      corTexto: corTexto,
                      icon: icon, 
                      websiteUrl: websiteUrl,
                      cor: cor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}