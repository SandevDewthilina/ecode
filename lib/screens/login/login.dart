import 'package:ecode/screens/login/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body:  SafeArea(
        child: Container(
          height: double.infinity,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/student_study_image.png",
                    height: size.height * 0.3,
                    width: size.width,
                  ),
                  Container(
                    height: size.height * 0.56,
                    width: size.width,
                    child: PageView(
                      children: <Widget>[
                        Widgets.loginForm(context),
                        Widgets.registerForm(context),
                      ],
                    ),
                  ),

                  Widgets.buildContactUs(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Widgets.buildSocialIcons(
                          context,
                          "assets/images/facebooklo"
                          "go.png",
                          45),
                      Widgets.buildSocialIcons(
                          context,
                          "assets/images/instalogo"
                          ".jpg",
                          35),
                      SizedBox(
                        width: 8,
                      ),
                      Widgets.buildSocialIcons(
                          context,
                          "assets/images/linkedinlogo"
                          ".webp",
                          35)
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    child: Text(
                      "Powered by Ecode Software Solutions (Pvt) Ltd",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
