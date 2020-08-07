import 'package:flutter/material.dart';

Container buildLoginFormContainer() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15),
              blurRadius: 15.0),
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0)
        ]),
    child: Padding(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "Poppins-B"
                    "old",
                letterSpacing: 0.6),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
              labelText: "Username",
              labelStyle: TextStyle(
                fontFamily: "Poppins-Medium"
              )
            )
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Password",
                labelStyle: TextStyle(
                    fontFamily: "Poppins-Medium"
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins-Medium",
                    color: Colors.blueAccent
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    ),
  );
}

Padding buildLineBreak() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: 80,
      height: 1,
      color: Colors.black26.withOpacity(0.2),
    ),
  );
}
