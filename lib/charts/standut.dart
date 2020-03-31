import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_19/charts/hospitalized.dart';
import 'package:covid_19/charts/states.dart';
import 'package:covid_19/charts/transmission.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/charts/sales.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatePage extends StatefulWidget {
  @override
  _StatePageState createState() {
    return _StatePageState();
  }
}

class _StatePageState extends State<StatePage> {
  List<charts.Series<UTST, String>> _seriesPieData;
  List<UTST> mydata;
  _generateData(mydata) {
    _seriesPieData = List<charts.Series<UTST, String>>();
    _seriesPieData.add(
      charts.Series(
        domainFn: (UTST task, _) => task.State,
        measureFn: (UTST task, _) => task.Cases,
        colorFn: (UTST task, _) =>
            charts.ColorUtil.fromDartColor(Color(0XFF6A1B9A)),
        id: 'States',
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
          title: Text('States and UT\'s', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('States').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return LinearProgressIndicator();
        } else {
          List<UTST> task = snapshot.data.documents
              .map((documentSnapshot) => UTST.fromMap(documentSnapshot.data))
              .toList();
          return _buildChart(context, task);
        }
      },
    );
  }
  Widget _buildChart(BuildContext context, List<UTST> taskdata) {
    mydata = taskdata;
    _generateData(mydata);
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'States And UT\'s',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.BarChart(_seriesPieData,
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                  vertical: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}