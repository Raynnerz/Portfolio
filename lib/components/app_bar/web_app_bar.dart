import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 10, 5, 163),
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Portfólio'),
          WebAppBarResponsiveContent(),
        ],
      ),
    );
  }
}