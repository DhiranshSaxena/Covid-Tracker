import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_19/charts/cases.dart';
import 'package:covid_19/charts/hospitalized.dart';
import 'package:covid_19/charts/transmission.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/charts/sales.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CumulativePage extends StatefulWidget {
  @override
  _CumulativePageState createState() {
    return _CumulativePageState();
  }
}

class _CumulativePageState extends State<CumulativePage> {
  List<charts.Series<Case, int>> _seriesPieData;
  List<Case> mydata;
  _generateData(mydata) {
    _seriesPieData = List<charts.Series<Case, int>>();
    _seriesPieData.add(
      charts.Series(
        domainFn: (Case task, _) => task.Date,
        measureFn: (Case task, _) => task.Cases,
        colorFn: (Case task, _) =>
            charts.ColorUtil.fromDartColor(Color(0XFF2962FF)),
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
          title: Text('Cumulative Trend', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('Cumulative').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return LinearProgressIndicator();
        } else {
          List<Case> task = snapshot.data.documents
              .map((documentSnapshot) => Case.fromMap(documentSnapshot.data))
              .toList();
          return _buildChart(context, task);
        }
      },
    );
  }
  Widget _buildChart(BuildContext context, List<Case> taskdata) {
    mydata = taskdata;
    _generateData(mydata);
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Cumulative Trend',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.LineChart(_seriesPieData,
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                  defaultRenderer: new charts.LineRendererConfig(includePoints: true),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}