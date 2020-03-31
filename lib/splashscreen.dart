import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_19/charts/nationality.dart';
import 'package:covid_19/charts/revovered.dart';
import 'package:covid_19/charts/standut.dart';
import 'package:covid_19/charts/transmission.dart';
import 'package:covid_19/charts/transmitting.dart';
import 'package:covid_19/data/firestore_services.dart';
import 'package:covid_19/dont.dart';
import 'package:covid_19/helpline.dart';
import 'package:flutter/material.dart';

import 'charts/cumulative.dart';
import 'do.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid-19",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget
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

    int confirmed;
    int deaths;
    int hospitalized;
    int intensive;
    int recovered;
    String date;
    String month;

    return new Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[200],
        leading: IconButton(
          icon: Icon(Icons.filter_list),
          color: Colors.black,
          onPressed: (){
            showModalBottomSheet(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: Colors.blueGrey[200],
                context: context,
                builder: (context){
                  return ListView(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black,),
                          title: Text("Cumulative Trend",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CumulativePage() ),);
                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black),
                          title: Text("States and UT\'s",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => StatePage() ),);
                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black),
                          title: Text("Nationality",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskHomePage() ),);
                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black),
                          title: Text("Transmission Source",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransmittingPage() ),);
                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black),
                          title: Text("Hospitalized",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RecoveredPage() ),);
                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black),
                          title: Text("Symptoms of COVID-19",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Do() ),);
                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black),
                          title: Text("Helpline Numbers",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline() ),);
                          }
                      ),
                      ListTile(
                          leading: Icon(Icons.pie_chart, color: Colors.black),
                          title: Text("Precautions and Myths",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Precaution() ),);
                          }
                      ),
                    ],
                  );
                });

          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text("COVID-19 TRACKER INDIA", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('Corona').snapshots(),
        builder: (context, snapshot)
        {
          confirmed = snapshot.data.documents[1]['Confirmed'];
          deaths = snapshot.data.documents[1]['Deaths'];
          hospitalized = snapshot.data.documents[1]['Hospitalized'];
          intensive = snapshot.data.documents[1]['Intensive'];
          recovered = snapshot.data.documents[1]['Recovered'];
          date = snapshot.data.documents[1]['Date'].toString();
          month = snapshot.data.documents[1]['Month'];

          if(!snapshot.hasData)
          {
            return CircularProgressIndicator();
          }

          return Column(
            children: <Widget>[
              Card(
                elevation: 10.0,
                color: Colors.blueGrey[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "30 January 2020 - " + date +" "+ month +" "+ "2020",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18
                      ),
                    ),
                  ),
                ),
              ),

              Card(
                elevation: 10.0,
                color: Colors.blueGrey[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Confirmed Cases - " + confirmed.toString(),
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Hospitalized Cases - " + hospitalized.toString(),
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Cases in Intensive Care - " + intensive.toString(),
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Recovered Cases - " + recovered.toString(),
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Total Death Cases - " + deaths.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: RaisedButton(
                  onPressed: (){
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        backgroundColor: Colors.blueGrey[200],
                        context: context,
                        builder: (context){
                          return ListView(
                            children: <Widget>[
                              ListTile(
                                  leading: Icon(Icons.pie_chart, color: Colors.black,),
                                  title: Text("Cumulative Trend",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CumulativePage() ),);
                                  }
                              ),
                              ListTile(
                                  leading: Icon(Icons.pie_chart,color: Colors.black),
                                  title: Text("States and UT\'s",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => StatePage() ),);
                                  }
                              ),
                              ListTile(
                                  leading: Icon(Icons.pie_chart,color: Colors.black),
                                  title: Text("Nationality",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskHomePage() ),);
                                  }
                              ),
                              ListTile(
                                  leading: Icon(Icons.pie_chart,color: Colors.black),
                                  title: Text("Transmission Source",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransmittingPage() ),);
                                  }
                              ),
                              ListTile(
                                  leading: Icon(Icons.pie_chart,color: Colors.black),
                                  title: Text("Hospitalized",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RecoveredPage() ),);
                                  }
                              ),
                              ListTile(
                                  leading: Icon(Icons.pie_chart,color: Colors.black),
                                  title: Text("Symptoms of COVID-19",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Do() ),);
                                  }
                              ),
                              ListTile(
                                  leading: Icon(Icons.pie_chart,color: Colors.black),
                                  title: Text("Helpline Numbers",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline() ),);
                                  }
                              ),
                              ListTile(
                                  leading: Icon(Icons.pie_chart,color: Colors.black),
                                  title: Text("Precautions and Myths",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Precaution() ),);
                                  }
                              ),
                            ],
                          );
                        });
                  },
                  child: Text("Further Details",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                  elevation: 10,
                  color: Colors.blueGrey[200],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
