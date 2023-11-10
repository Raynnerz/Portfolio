import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color? cor;
  final Color? corTexto;
  final String websiteUrl;

  const SocialButton({super.key,
    required this.icon, 
    required this.text, 
    this.cor, this.corTexto, 
    required this.websiteUrl, 
  });

  void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  } 

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: () {
          launchUrl(Uri.parse(websiteUrl));
        },
        icon: icon,
        label: Text(text, style: TextStyle(color: corTexto)),
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(cor)),
      ),
    );
  }
}