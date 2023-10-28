import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasty_yummy/Pages/SplashScreen1.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gif/splash.gif'),
            fit: BoxFit.cover,
          )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black12,
              Colors.black87
            ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    child: Text('Tasty & Yummy',style: GoogleFonts.anton(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold))),
                Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    child: Text('Yeah I can cook that!',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold))),
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top:10,bottom: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe91e63),
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen1()));
                    },
                    child:  Text(
                      'Get started', style: GoogleFonts.roboto(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              ],
            )
          )
        ),
      ),
    );
  }
}
