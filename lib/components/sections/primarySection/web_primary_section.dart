import 'package:flutter/material.dart';
import 'package:portfolio/components/sections/primarySection/profile_widget.dart';
import 'package:portfolio/components/sections/primarySection/tecnologies_widget.dart';

class WebPrimarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileWidget(),
        TecnologiesWidget()
      ],
    );
  }
}