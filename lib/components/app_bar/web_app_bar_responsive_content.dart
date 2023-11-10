import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              if (constraints.maxWidth >= 400) ...[
                
              ],
              if (constraints.maxWidth >= 500) ...[
               
              ]
            ],
          );
        },
      ),
    );
  }
}