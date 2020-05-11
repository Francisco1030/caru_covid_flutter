import 'package:covid_caru/app/components/cards/card_info_covid.dart';
import 'package:covid_caru/app/components/cards/card_symptoms.dart';
import 'package:covid_caru/app/components/clipper/clipper_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: ClipperHeader(),
                  child: Container(
                    height: 280,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepPurple,
                          Colors.deepPurple[900]
                        ]
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 180, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CardInfoCovid(title: "Confirmados", value: 11, color: Colors.red),
                      SizedBox(width: 10),
                      CardInfoCovid(title: "Descartados", value: 12, color: Colors.grey),
                      SizedBox(width: 10),
                      CardInfoCovid(title: "Óbitos", value: 3, color: Colors.black),
                      SizedBox(width: 10),
                      CardInfoCovid(title: "Recuperados", value: 1, color: Colors.green),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Sintomas mais comuns".toUpperCase(), style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey
                )),
              )
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    CardSymptoms(title: "Febre"),
                    CardSymptoms(title: "Dor na garganta"),
                    CardSymptoms(title: "Falta de ar"),
                    CardSymptoms(title: "Tosse (seca ou secretiva)"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}