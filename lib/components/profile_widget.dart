import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('images/user_avatar.png', width: 150,),
          Text('Raynner Sanchez Rodrigues')
        ],
      ),
    );
  }
}