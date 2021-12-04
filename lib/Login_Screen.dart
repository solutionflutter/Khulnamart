import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            right: MediaQuery.of(context).size.width / 20,
            top: MediaQuery.of(context).size.height / 25,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 18,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 20,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 70.0,
                      vertical: 5,
                    ),
                    child: Text(
                      "Login Screen",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5.5,
            left: MediaQuery.of(context).size.width / 3.5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 7,
              child: Text(
                "KHULNA\n  MART",
                style: GoogleFonts.montserrat(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, .6),
                  fontSize: 35,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your Email Address",
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(21, 21, 21, .6),
                          fontStyle: FontStyle.italic,
                        ),
                        labelStyle: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(21, 21, 21, .6),
                          fontStyle: FontStyle.normal,
                        ),
                        labelText: "Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) {
                        if (email.isEmpty) {
                          return "input field should not be empty.";
                        } else if (email.length < 10) {
                          return "invalide email";
                        } else {
                          return "your email is successfully store in firbase";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(21, 21, 21, .6),
                          fontStyle: FontStyle.italic,
                        ),
                        labelStyle: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(21, 21, 21, .6),
                          fontStyle: FontStyle.normal,
                        ),
                        labelText: "Password",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) {
                        if (email.isEmpty) {
                          return "input field should not be empty.";
                        } else if (email.length < 10) {
                          return "invalide password";
                        } else {
                          return "your password is successfully store in firbase";
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
