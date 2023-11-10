import 'package:flutter/material.dart';
import 'package:portfolio/components/socialbutton_widget.dart';

class CardWidget extends StatelessWidget {
  final Text title;
  final Text description;
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
    this.cor, this.corTexto
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 500,
        child: Card(
          color: Color.fromARGB(255, 26, 24, 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
              title: title,
            ),
            SizedBox(
              height: 10,
            ),
            Text(description.toString(), style: TextStyle(color: Color.fromARGB(255, 170, 170, 170)),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
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