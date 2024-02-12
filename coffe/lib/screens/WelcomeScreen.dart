import 'package:coffe/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 50, bottom: 40),
        decoration: BoxDecoration(
            color: Color(0xFF397B5F),
            image: DecorationImage(
              image: AssetImage("images/welcome.png"),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffe Hub",
              style: GoogleFonts.kaushanScript(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 80),
                Material(
                  color: Color(0xFF0F2A1F),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.roboto(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
