import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tava_web/components/feature_card2.dart';
import 'package:tava_web/constants/constants.dart';

class MobileBody extends StatefulWidget {
  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _jobController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _jobController.dispose();
    super.dispose();
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!value.contains('@') || !value.contains('.com')) {
      return 'Invalid email format. Must contain @ and .com';
    }
    return null;
  }

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
            padding: const EdgeInsets.only(left: 48.0),
            child: SvgPicture.asset('assets/icons/tava2.svg'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 48.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff042E26)),
                  height: 57,
                  width: 130,
                  child: Center(
                    child: Text(
                      'Join the Waitlist',
                      style: TextStyle(
                        fontSize: 11,
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
        body: ListView(children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Mobile bg.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 80.0, left: 48, right: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Services, \nYour Price: Get \nEarly Access to Tava!!!',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -1.5,
                              height: 1,
                              color: Color(0xff053F33)),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Tava lets you set your price and choose from top-rated providers who bid to meet your needs. Join the waitlist to be the first to experience flexible, fair service connections.',
                          style: TextStyle(
                            fontSize: 11,
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
                              horizontal: 39,
                              vertical: 20,
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
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/images/phone1.png')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 48.0, vertical: 64),
                  child: Column(
                    children: [
                      Text(
                        'Benefits of Joining\n Early?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.8,
                          color: Color(0xff053F33),
                          height: 1,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        'Tava lets you set your price and choose from top-rated providers who bid to meet your needs. Join the waitlist to be the first to experience flexible, fair service connections.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: -0.2,
                          fontWeight: FontWeight.w400,
                          color: kSubtitleColor,
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0XFF042E26),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 13.0, left: 13, right: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FeatureCard2(
                                header:
                                    'Get Exclusive Access to Amazing Services!',
                                body:
                                    'Be the first to experience a seamless platform tailored for your everyday needs. Unlock special perks and discounts only available to waitlist members. Stay ahead with early updates and a priority invitation when we launch. Join a community of like-minded individuals who value convenience and excellence.',
                              ),
                              Container(
                                width: double.maxFinite,
                                height: 1,
                                color: kSecondaryColor,
                              ),
                              FeatureCard2(
                                header: 'Grow Your Business with Us!',
                                body:
                                    'Get early access to showcase your services to a wide audience. Enjoy priority onboarding and support as a valued provider. Unlock tools and insights to expand your reach and grow your revenue. Be part of a platform designed to connect you with customers who need your services.',
                              ),
                              /*SizedBox(
                                height: 500,
                                child: Padding(
                                  padding: const EdgeInsets.all(19.0),
                                  child: GridView.count(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 11,
                                    crossAxisSpacing: 11,
                                    childAspectRatio: 0.64,
                                    children: [
                                      FeatureCardMobile(),
                                      FeatureCardMobile(),
                                      FeatureCardMobile(),
                                      FeatureCardMobile(),
                                    ],
                                  ),
                                ),
                              ),*/
                              Image.asset('assets/images/phone 3.png')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                        ),
                        width: 900,
                        height: 500,
                        child: Image.asset(
                          'assets/images/Group 33356.png',
                          height: 800,
                          width: 1000,
                        ),
                      ),
                      SizedBox(height: 80),
                      SizedBox(
                        height: 680,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Join the waitlist below and enjoy the early benefits!',
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.8,
                                  height: 1,
                                  color: Color(0xff053F33)),
                            ),
                            SizedBox(height: 44),
                            Text('Full Name'),
                            SizedBox(height: 14),
                            TextFormField(
                              controller: _fullNameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'enter your Full Name';
                                } else {
                                  return null;
                                }
                              },
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
                            SizedBox(height: 30),
                            Text('Email Address'),
                            SizedBox(height: 14),
                            TextFormField(
                              controller: _emailController,
                              validator: validateEmail,
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
                            SizedBox(height: 30),
                            Text('Job Title'),
                            SizedBox(height: 14),
                            TextFormField(
                              controller: _jobController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'enter your occupation Name';
                                } else {
                                  return null;
                                }
                              },
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'eg. Plumber, Cleaner, Engineer',
                                hintStyle: TextStyle(
                                  color: Color(0XFFB6B6B6),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 38,
                            ),
                            GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState!.validate()) {
                                  try {
                                    await FirebaseFirestore.instance
                                        .collection('waitlist')
                                        .add({
                                      'full_name': _fullNameController.text,
                                      'email': _emailController.text,
                                      'job': _jobController.text,
                                      'timestamp': FieldValue.serverTimestamp(),
                                    });
                                    print("Data added successfully");

                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Homepage()),
                                    );
                                  } catch (e) {
                                    print("Error adding data: $e");
                                  }
                                } else {
                                  print('Validation failed');
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(color: kPrimaryColor),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 84,
                                    vertical: 20,
                                  ),
                                  child: Text(
                                    'You are just a step away!',
                                    style: TextStyle(
                                      fontSize: 12,
                                      letterSpacing: -0.2,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48.0, vertical: 90),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset('assets/icons/tava2.svg'),
                            SizedBox(height: 20),
                            Text(
                              'Tava lets you set your price and choose from top-rated providers who bid to meet your needs. Join the waitlist to be the first to experience flexible, fair service connections.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/facebook.svg'),
                                SvgPicture.asset('assets/icons/twitter.svg'),
                                SvgPicture.asset('assets/icons/instagram.svg'),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 27),
                        Container(
                          width: double.infinity,
                          height: 2,
                          color: kSecondaryColor,
                        ),
                        SizedBox(height: 27),
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
        ]) //CHANGE THIS TO LISTVIEW
        );
  }
}
