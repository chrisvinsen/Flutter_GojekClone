import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/shared/style.dart';

import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final formController = TextEditingController();

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
          child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Masuk',
                    style: textHeading2,
                  ),
                  SizedBox(
                      height: 5
                  ),
                  Text(
                    'Silahkan masuk dengan nama kamu!',
                    style: textParagraf4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nama*',
                    style: textParagraf4,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Cth: Nadiem Makarim',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan nama Anda';
                        }
                        return null;
                      },
                      controller: formController,
                      style: textParagraf3
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // isExtended: true,
            child: Icon(Icons.arrow_forward),
            mini: true,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainScreen(name: formController.text)
                  ),
                      (Route<dynamic> route) => false,
                );
              }
            }
        ),
      ),
    );
  }
}