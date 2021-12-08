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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              //Appbar
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),

                    //padding of loging page

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 75),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 25,
                        width: MediaQuery.of(context).size.width / 3,
                        child: Text(
                          "Login Page",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(21, 21, 21, .7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // calling loginScreenBody function
              loginScreenBody(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginScreenBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: MediaQuery.of(context).size.height / 6,
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                "Khulna\nMart",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 45,
                  color: Color.fromRGBO(21, 21, 21, .7),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  TextFormField(
                    validator: (email) {
                      if (email.isEmpty) {
                        return "Required Email";
                      } else if (email.contains("@")) {
                        return "It is not a valid email";
                      } else {
                        return "Login";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Your Email Address",
                      labelText: "Email Address",
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Color.fromRGBO(21, 21, 21, .6),
                      ),
                      labelStyle: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(21, 21, 21, .6),
                      ),
                      hoverColor: Color.fromRGBO(0, 0, 255, .4),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      obscureText: true,
                      validator: (password) {
                        if (password.isEmpty) {
                          return "Password Required";
                        } else if (password.length < 4) {
                          return "Password is required 6 character min";
                        } else {
                          return "Login";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        labelText: "Password",
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(21, 21, 21, .6),
                        ),
                        labelStyle: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(21, 21, 21, .6)),
                        hoverColor: Color.fromRGBO(0, 0, 255, .6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
