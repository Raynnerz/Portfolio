import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TecnologiesWidget extends StatefulWidget {
  const TecnologiesWidget({super.key});

  @override
  State<TecnologiesWidget> createState() => _TecnologiesWidgetState();
}

class _TecnologiesWidgetState extends State<TecnologiesWidget> {
  final CarouselController buttonCarouselController = CarouselController(); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterCarousel(items: [
          
        ], options: CarouselOptions(
          autoPlay: false,
          controller: buttonCarouselController,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
          ),
        )
      ]
    );
  }
}