import 'package:flutter/material.dart';

class FeatureCard2 extends StatelessWidget {
  final String header;
  final String body;

  const FeatureCard2({
    super.key,
    required this.header,
    required this.body
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.66,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            body,
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 12,
              fontWeight: FontWeight.w300,
              letterSpacing: -0.3,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
