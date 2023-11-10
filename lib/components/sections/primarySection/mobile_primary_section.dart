import 'package:flutter/material.dart';
import 'package:portfolio/components/sections/primarySection/profile_widget.dart';
import 'package:portfolio/components/sections/primarySection/tecnologies_widget.dart';

class MobilePrimarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileWidget(),
        TecnologiesWidget()
      ],
    );
  }
}