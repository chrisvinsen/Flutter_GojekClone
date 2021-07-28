import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/shared/style.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daftar',
                style: textHeading2,
              ),
              SizedBox(
                height: 5
              ),
              Text(
                'Lengkapi data dirimu di bawah ini, ya',
                style: textParagraf4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nama *',
                style: textParagraf5,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cth: Sri Wedari',
                ),
                style: textParagraf3
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Email *',
                style: textParagraf4,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cth: nama@email.com',
                ),
                style: textParagraf3
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nomor HP *',
                style: textParagraf4,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cth: 08xxxxxxxxx',
                ),
                style: textParagraf3
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Kode referral (Opsional)',
                style: textParagraf4,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Belum ada? Bisa masukkin nanti.',
                ),
                style: textParagraf3
              ),
              SizedBox(
                height: 20,
              ),
            ]
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // isExtended: true,
          child: Icon(Icons.arrow_forward),
          mini: true,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          }
        ),
      ),
    );
  }
}