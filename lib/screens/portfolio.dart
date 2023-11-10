import 'package:flutter/material.dart';
import 'package:portfolio/components/profile_widget.dart';
import 'package:portfolio/components/tecnologies_widget.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        shrinkWrap: true,
        children: const [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ProfileWidget(),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      TecnologiesWidget()
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}