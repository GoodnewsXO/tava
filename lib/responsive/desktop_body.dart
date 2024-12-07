import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tava_web/components/feature.dart';
import 'package:tava_web/constants/constants.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 90,
        title: Padding(
          padding: const EdgeInsets.only(left: 108.0),
          child: SvgPicture.asset('assets/icons/tava2.svg'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 108.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(color: kPrimaryColor),
                height: 57,
                width: 217,
                child: Center(
                  child: Text(
                    'Join the Waitlist',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.4,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 850,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 58.0,
                  right: 108,
                  left: 108,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 136.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Services, \nYour Price: Get \nEarly Access to Tava!!!',
                            style: TextStyle(
                              fontSize: 72,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.7,
                              height: 1,
                              color: Color(0xff053F33)
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            'Tava lets you set your price and choose from top-rated providers who bid to\nmeet your needs. Join the waitlist to be the first to experience flexible, \nfair service connections.',
                            style: TextStyle(
                              fontSize: 17,
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.w400,
                              color: kSubtitleColor,
                            ),
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          Container(
                            decoration: BoxDecoration(color: kPrimaryColor),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 84,
                                vertical: 34,
                              ),
                              child: Text(
                                'Join the waitlist',
                                style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/phone1.png',
                      width: 690,
                      height: 730,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 195, right: 195),
              child: Column(
                children: [
                  Text(
                    'Benefits of Joining Early?',
                    style: TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.8,
                      color: Color(0xff053F33),
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Tava lets you set your price and choose from top-rated providers who bid to meet \nyour needs. Join the waitlist to be the first to experience flexible, fair service connections.',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w400,
                      color: kSubtitleColor,
                    ),
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 632,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0XFF042E26),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 51.0),
                            child: Column(
                              children: [
                                Feature(),
                                SizedBox(
                                  height: 54,
                                ),
                                Feature(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset(
                            'assets/images/phone.png',
                            width: 375,
                            height: 788,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 51.0),
                            child: Column(
                              children: [
                                Feature(),
                                SizedBox(
                                  height: 54,
                                ),
                                Feature(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 186.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                    ),
                    width: 900,
                    height:700,
                    child: Image.asset(
                      'assets/images/Group 33356.png',
                      height: 800,
                      width: 1000,
                    ),
                  ),
                  SizedBox(width: 100),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Join the waitlist below and enjoy the early benefits!',
                          style: TextStyle(
                            fontSize: 52,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.8,
                            height: 1,
                              color: Color(0xff053F33)
                          ),
                        ),
                        SizedBox(height: 44),
                        Text('First Name'),
                        SizedBox(height: 14),
                        TextFormField(
                          cursorColor: kPrimaryColor,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'eg. Chinedu Olabisi Abdullahi',
                            hintStyle: TextStyle(
                              color: Color(0XFFB6B6B6),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 44),
                        Text('Last Name'),
                        SizedBox(height: 14),
                        TextFormField(
                          cursorColor: kPrimaryColor,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'eg. chineduolabisiabdul@gmail.com',
                            hintStyle: TextStyle(
                              color: Color(0XFFB6B6B6),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Container(
                          decoration: BoxDecoration(color: kPrimaryColor),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 84,
                              vertical: 34,
                            ),
                            child: Text(
                              'You are just a step away!',
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: -0.2,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xff042E26),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 186.0, vertical: 90),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/tava2.svg'),
                        SizedBox(width: 100),
                        Expanded(
                          child: Text(
                            'Tava lets you set your price and choose from top-rated providers who bid to meet your needs. Join the waitlist to be the first to experience flexible, fair service connections.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(width: 100),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/facebook.svg'),
                            SvgPicture.asset('assets/icons/twitter.svg'),
                            SvgPicture.asset('assets/icons/instagram.svg'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 77),
                    Container(
                      width: double.infinity,
                      height: 2,
                      color: kSecondaryColor,
                    ),
                    SizedBox(height: 77),
                    Text(
                      '© copyright LavaStudios 2024',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: -0.2,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
