import 'package:flutter/material.dart';
import 'package:portfolio/breakpoints.dart';
import 'package:portfolio/components/app_bar/mobile_app_bar.dart';
import 'package:portfolio/components/app_bar/web_app_bar.dart';
import 'package:portfolio/components/sections/primarySection/mobile_primary_section.dart';
import 'package:portfolio/components/sections/primarySection/profile_widget.dart';
import 'package:portfolio/components/sections/primarySection/tecnologies_widget.dart';
import 'package:portfolio/components/sections/primarySection/web_primary_section.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: constraints.maxWidth < mobileBreakpoint
            ? PreferredSize(
              child: MobilePrimarySection(),
              preferredSize: Size(double.infinity, 66),
            )
            : PreferredSize(
              child: WebPrimarySection(), preferredSize: Size(double.infinity, 72),
            )
          
        );
      }
    );
  }
}