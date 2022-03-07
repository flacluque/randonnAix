// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/main.dart';

//import 'package:google_fonts/google_fonts.dart';

//video : 28:10

const d_green = Color(0xFF54D3C2);

class RandoPage extends StatelessWidget {
  String image;
  String description;
  String title;
  RandoPage(this.image, this.description, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 5,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 5,
                        child: Container(
                          child: MaterialButton(
                            color: Colors.white,
                            shape: CircleBorder(),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                            },
                            child: Icon(Icons.arrow_back,
                                color: Colors.black, size: 20),
                          ),
                        ),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Column(children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.nunito(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Text(
                            'Description :',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              description,
                              style: GoogleFonts.nunito(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]))
            ],
          ),
        ));
  }
}
