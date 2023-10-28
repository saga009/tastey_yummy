import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasty_yummy/Pages/HomePage.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var oneside = width/3;
    var restPart = width-oneside;


    return  Container(
      color: Color(0xFF79dcf1),

      // ),
      child: Container(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        SizedBox(height: 150,),
                        Text('Quick Question:',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text('Are you a \nvegetarian?',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Container(
                          height: 130,
                          child: Card(
                            color: Colors.white,
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 50.0,
                            margin: EdgeInsets.all(10.0),
                            child:
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                              },
                              splashColor: Color(0xFF79dcf1),
                              child: Center(
                                  child:
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: oneside-10,
                                        child: Image.asset('assets/images/burger.png'),
                                      ),
                                      Container(
                                          width: restPart-10,
                                          child: Text('Nope,show me all\nthe recipes',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                                      ),

                                    ],
                                  )
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Card(
                            color: Colors.white,
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 30.0,
                            margin: EdgeInsets.all(10.0),
                            child:
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              splashColor: Color(0xFF79dcf1),

                              child: Center(
                                  child:
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: oneside-10,
                                        child: Image.asset('assets/images/avocado.png'),
                                      ),
                                      Container(
                                          width: restPart-10,
                                          child: Text('Yes,hide recipes\nwith meat',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                                      ),

                                    ],
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                )
            )
        ),
      ),
    );
  }
}
