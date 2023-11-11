import 'package:flutter/material.dart';
import 'package:portfolio/components/profile/mobile_profile_widget.dart';
import 'package:portfolio/components/projects_widget.dart';
import 'package:portfolio/components/tecnologies_widget.dart';

class MobilePrimarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          MobileProfileWidget(),
          SizedBox(height: 20),
          SingleChildScrollView( 
            child: Container(
              child: TecnologiesWidget())
          ),
          SingleChildScrollView( 
            child: Container(
              child: ProjectsWidget())
          ),
        ],
      ),
      ]
    );
  }
}