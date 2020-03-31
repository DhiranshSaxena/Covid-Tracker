import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_19/charts/nationality.dart';
import 'package:covid_19/charts/revovered.dart';
import 'package:covid_19/charts/standut.dart';
import 'package:covid_19/charts/transmission.dart';
import 'package:covid_19/charts/transmitting.dart';
import 'package:covid_19/data/firestore_services.dart';
import 'package:flutter/material.dart';

import 'charts/cumulative.dart';
import 'do.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid-19",
    home: Do(),
  ));
}

class Do extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStat(),
    );
  }
}

class MyStat extends StatefulWidget
{
  @override
  _MyStatState createState() => new _MyStatState();

}

class _MyStatState extends State<MyStat>
{

  Widget build(BuildContext context)
  {


    return new Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[200],
        title: Center(child: Text("Symptoms of COVID-19", style: TextStyle(color: Colors.black),)),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 10.0,
            color: Colors.white12,
            child: ListTile(
              title: Center(
                child: Text(
                  "Symptoms of COVID-19",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 10.0,
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Center(
                child: Text(
                  "The COVID-19 virus affects different people in different ways.  COVID-19 is a respiratory disease and most infected people will develop mild to moderate symptoms and recover without requiring special treatment.  People who have underlying medical conditions and those over 60 years old have a higher risk of developing severe disease and death.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 10.0,
            color: Colors.white12,
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Center(
                child: Text(
                  "Common symptoms include:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 10.0,
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Text(
                  "* fever\n* tiredness\n* dry cough",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
            ),
          ),
          Card(
            elevation: 10.0,
            color: Colors.white12,
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Center(
                child: Text(
                  "Other symptoms include:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 10.0,
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Text(
                "* Shortness of Breathe\n* Aches and Pain\n* Sore Throat\n* And very less people will show Diarrhoea",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
