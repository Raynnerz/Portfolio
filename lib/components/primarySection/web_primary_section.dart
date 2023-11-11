import 'package:flutter/material.dart';
import 'package:portfolio/components/profile/profile_widget.dart';
import 'package:portfolio/components/projects_widget.dart';
import 'package:portfolio/components/tecnologies_widget.dart';


class WebPrimarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: [
            Expanded(
              child: ProfileWidget(),
            ),
        
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
          child: TecnologiesWidget(),
          ),
            SingleChildScrollView(
          child: ProjectsWidget(),
          ),
          ],
        )
      ],
    );
  }
}

