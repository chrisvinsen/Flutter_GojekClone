import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/login_screen.dart';
import 'package:gojek_clone/model/welcome_carousel.dart';
import 'package:gojek_clone/register_screen.dart';
import 'package:gojek_clone/shared/style.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'images/logo_vert.png',
            width: 125,
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.infinity,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                  ),
                  items: welcomeCarouselList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                i.imageAsset,
                                height: 150,
                              ),
                              SizedBox(
                                height: 15
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  i.title,
                                  style: textHeading2,
                                ),
                              ),
                              SizedBox(
                                height: 10
                              ),
                              Text(
                                i.description,
                                style: textParagraf4,
                              ),
                            ]
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return LoginScreen();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Masuk'),
                          ),
                          style: buttonRadius
                      ),
                    ),
                    SizedBox(
                        height: 5
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return RegisterScreen();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Belum ada akun? Daftar dulu'),
                          ),
                          style: buttonRadius
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan Layanan dan Kebijakan Privasi.',
                      style: textParagraf5,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}