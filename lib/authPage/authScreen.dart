import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'widgets/authwidgets.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                child: Image.asset("assets/images/student_study_image.png"),
                padding: EdgeInsets.only(top: 60, left: 40, right: 40),
              ),
            ],
          ),
          Positioned(
            left: 25,
            right: 25,
            top: height * 0.3,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildLoginFormContainer(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create an account",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          child: Container(
                              width: 150,
                              height: 55,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF17ead9),
                                    Color(0xFF6078ea)
                                  ]),
                                  borderRadius: BorderRadius.circular(6.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xFF6078ea).withOpacity(.3),
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 8.0)
                                  ]),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Center(
                                    child: Text(
                                      "SIGN IN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 18,
                                          letterSpacing: 1.0),
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
          Positioned(
            left: 8,
            right: 8,
            bottom: 18,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildLineBreak(),
                    Text("Contact Us", style: TextStyle(
                      fontFamily: "Poppins-Medium"
                    ),),
                    buildLineBreak(),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                    child: Image.asset(
                      "assets/images/facebooklogo.png",
                      height: 45,
                      width: 45,
                    ),
                    onTap: () {},
                    borderRadius: BorderRadius.circular(45),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        "assets/images/linkedinlogo.webp",
                        height: 35,
                        width: 35,
                      ),
                    ),
                    onTap: () {},
                    borderRadius: BorderRadius.circular(40),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        "assets/images/instalogo.jpg",
                        height: 35,
                        width: 35,
                      ),
                    ),
                    onTap: () {},
                    borderRadius: BorderRadius.circular(45),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    "assets/images/ecode_black_logo.png",
                    height: 25,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<http.Response> fetchPhotos(http.Client client) async {
    final response =
    await client.get('https://jsonplaceholder.typicode.com/photos');
    return response;
  }

}
