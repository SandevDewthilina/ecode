import 'package:ecode/screens/login/logic/Authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Widgets {

  static TextEditingController studentIdContoller = TextEditingController();
  static TextEditingController studentPasswordController =
  TextEditingController();

  static Padding buildForm(
      BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text("Login",
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1.2,
                  )),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: studentIdContoller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Student Id",
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: studentPasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Text(
                      "forgot password ?",
                      style: GoogleFonts.poppins(
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              content: Text("Forgot Passwort ?"),
                              actions: [
                                FlatButton(
                                  child: Text(
                                    "Close",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.blueAccent),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                FlatButton(
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.blueAccent),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0.0, 15.0),
                  color: Colors.black12,
                  blurRadius: 15),
              BoxShadow(
                  offset: Offset(0.0, -10.0),
                  color: Colors.black12,
                  blurRadius: 10)
            ]),
      ),
    );
  }

  static Builder buildSignInBtn() {
    return Builder(
        builder: (context) => Container(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    authentication(context);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Text("Sign in",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 25)),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF6078ea).withOpacity(.9),
                        offset: Offset(0.0, 8.0),
                        blurRadius: 8.0)
                  ],
                  gradient: LinearGradient(
                      colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
                  borderRadius: BorderRadius.circular(8.0)),
            ));
  }

  static Padding buildContactUs() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildLineBreak(),
          Text(
            "Contact us",
            style: GoogleFonts.poppins(fontSize: 15),
          ),
          buildLineBreak()
        ],
      ),
    );
  }

  static Padding buildLineBreak() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Container(
        width: 80,
        height: 1,
        color: Colors.black26.withOpacity(0.2),
      ),
    );
  }

  static InkWell buildSocialIcons(
      BuildContext context, String imagepath, double height) {
    return InkWell(
      onTap: () {
        showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                content: Text("Want to contact us ?"),
                actions: [
                  FlatButton(
                    child: Text(
                      "Close",
                      style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  FlatButton(
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            });
      },
      child: Image.asset(
        imagepath,
        height: height,
        width: height,
      ),
    );
  }
}
