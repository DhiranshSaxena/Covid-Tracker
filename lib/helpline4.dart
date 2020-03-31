import 'package:covid_19/helpline3.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid-19",
    home: Helpline4(),
  ));
}

class Helpline4 extends StatelessWidget
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
        title: Padding(
          padding: const EdgeInsets.only(left: 65.0),
          child: Text("Helpline Numbers",style: TextStyle(color: Colors.black),),
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
                  "Dadar and Nagar Haveli - 104",
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
                  "Delhi - 011-22307145",
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
                  "Jammu and Kashmir - 01912520982",
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
                  "Ladakh - 01982256462",
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
                  "Lakshadweep - 104",
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
                  "Puducherry - 104",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),

          RaisedButton(
            elevation: 10,
            child: Text("Previous Page",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
            color: Colors.blueGrey[200],
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline3() ),);
            },
          ),
        ],
      ),
    );
  }
}
