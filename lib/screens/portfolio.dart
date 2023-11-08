import 'package:flutter/material.dart';
import 'package:portfolio/components/profile_widget.dart';
import 'package:portfolio/components/tecnologies_widget.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          ProfileWidget(),
          TecnologiesWidget()
        ],
      ),
    );
  }
}