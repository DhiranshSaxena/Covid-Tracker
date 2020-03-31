import 'package:covid_19/helpline2.dart';
import 'package:flutter/material.dart';

import 'helpline4.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid-19",
    home: Helpline3(),
  ));
}

class Helpline3 extends StatelessWidget
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline4() ),);
          },
        ),
        backgroundColor: Colors.blueGrey[200],
        title: Padding(
          padding: const EdgeInsets.only(left: 65.0),
          child: Text("Helpline Numbers", style: TextStyle(color: Colors.black),),
        ),
      ),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 10.0,
            color: Colors.blueGrey[200],
            child: ListTile(
              title: Center(
                child: Text(
                  "Rajasthan - 0141-2225624",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Sikkim - 104",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Tamil Nadu - 044-29510500",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Telangana - 104",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Tripura - 0381-2315879",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Uttarakhand - 104",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Uttar Pradesh - 18001805145",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "West Bengal - 1800313444222",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Andabar and Nicobar - 03192-232102",
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
            child: ListTile(
              title: Center(
                child: Text(
                  "Chandigarh - 9779558282",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: RaisedButton(
                  elevation: 10,
                  child: Text("Previous Page",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                  color: Colors.blueGrey[200],
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline2() ),);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: RaisedButton(
                  elevation: 10,
                  child: Text("Next Page",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                  color: Colors.blueGrey[200],
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline4() ),);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
