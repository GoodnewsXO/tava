import 'package:flutter/material.dart';
import 'package:tava_web/responsive/desktop_body.dart';
import 'package:tava_web/responsive/mobile_body.dart';
import 'package:tava_web/responsive/responsive_layout.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(mobileBody: MobileBody(), desktopBody: DesktopBody()),
    );
  }
}