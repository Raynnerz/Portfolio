import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color? cor;
  final Color? corTexto;
  final VoidCallback? onPressed;
  const SocialButton({super.key, required this.icon, required this.text, this.cor, this.corTexto, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(text, style: TextStyle(color: corTexto)),
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(cor)),
      ),
    );
  }
}