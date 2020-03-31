import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_19/charts/transmission.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/charts/sales.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TransmittingPage extends StatefulWidget {
  @override
  _TransmittingPageState createState() {
    return _TransmittingPageState();
  }
}

class _TransmittingPageState extends State<TransmittingPage> {
  List<charts.Series<Transmission, String>> _seriesPieData;
  List<Transmission> mydata;
  _generateData(mydata) {
    _seriesPieData = List<charts.Series<Transmission, String>>();
    _seriesPieData.add(
      charts.Series(
        domainFn: (Transmission task, _) => task.Source,
        measureFn: (Transmission task, _) => task.Cases,
        colorFn: (Transmission task, _) =>
            charts.ColorUtil.fromDartColor(Color(int.parse(task.Color))),
        id: 'Source',
        data: mydata,
        labelAccessorFn: (Transmission row, _) => "${row.Cases}",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          backgroundColor: Colors.blueGrey[200],
          title: Text('Transmission Source', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('Transmission').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return LinearProgressIndicator();
        } else {
          List<Transmission> task = snapshot.data.documents
              .map((documentSnapshot) => Transmission.fromMap(documentSnapshot.data))
              .toList();
          return _buildChart(context, task);
        }
      },
    );
  }
  Widget _buildChart(BuildContext context, List<Transmission> taskdata) {
    mydata = taskdata;
    _generateData(mydata);
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Transmission Source',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.PieChart(_seriesPieData,
                    animate: true,
                    animationDuration: Duration(seconds: 5),
                    behaviors: [
                      new charts.DatumLegend(
                        outsideJustification:
                        charts.OutsideJustification.endDrawArea,
                        horizontalFirst: false,
                        desiredMaxRows: 2,
                        cellPadding:
                        new EdgeInsets.only(right: 4.0, bottom: 4.0,top:4.0),
                        entryTextStyle: charts.TextStyleSpec(
                            color: charts.MaterialPalette.black,
                            fontFamily: 'Georgia',
                            fontSize: 18),
                      )
                    ],
                    defaultRenderer: new charts.ArcRendererConfig(
                        arcWidth: 100,
                        arcRendererDecorators: [
                          new charts.ArcLabelDecorator(
                              labelPosition: charts.ArcLabelPosition.inside,
                          )
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}