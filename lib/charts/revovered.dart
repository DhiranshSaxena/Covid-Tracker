import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_19/charts/hospitalized.dart';
import 'package:covid_19/charts/transmission.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/charts/sales.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class RecoveredPage extends StatefulWidget {
  @override
  _RecoveredPageState createState() {
    return _RecoveredPageState();
  }
}

class _RecoveredPageState extends State<RecoveredPage> {
  List<charts.Series<Hospitalized, String>> _seriesPieData;
  List<Hospitalized> mydata;
  _generateData(mydata) {
    _seriesPieData = List<charts.Series<Hospitalized, String>>();
    _seriesPieData.add(
      charts.Series(
        domainFn: (Hospitalized task, _) => task.Date,
        measureFn: (Hospitalized task, _) => task.Cases,
        colorFn: (Hospitalized task, _) =>
            charts.ColorUtil.fromDartColor(Colors.pink[800]),
        id: 'Cases',
        data: mydata,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          backgroundColor: Colors.blueGrey[200],
          title: Text('Daily Trend', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('Trend').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return LinearProgressIndicator();
        } else {
          List<Hospitalized> task = snapshot.data.documents
              .map((documentSnapshot) => Hospitalized.fromMap(documentSnapshot.data))
              .toList();
          return _buildChart(context, task);
        }
      },
    );
  }
  Widget _buildChart(BuildContext context, List<Hospitalized> taskdata) {
    mydata = taskdata;
    _generateData(mydata);
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Daily Trend',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.BarChart(_seriesPieData,
                    animate: true,
                    animationDuration: Duration(seconds: 5),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}