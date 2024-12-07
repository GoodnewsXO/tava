import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Feature extends StatelessWidget {
  const Feature({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(31)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22, top: 55, bottom: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/icons/feature.svg'),
            SizedBox(height: 18,),
            Text(
              'Get access to Jobs',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.66,
                height: 1,
              ),
            ),
            SizedBox(height: 18,),
            Text(
              'Tava lets you set your price and \nchoose from top-rated providers\n who bid to meet your needs.',
              maxLines: 2,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                letterSpacing: -0.3,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
