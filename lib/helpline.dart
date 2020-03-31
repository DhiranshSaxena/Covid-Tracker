import 'package:flutter/material.dart';

import 'helpline2.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid-19",
    home: Helpline(),
  ));
}

class Helpline extends StatelessWidget
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline2() ),);
          },
        ),
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
                  "Andra Pradesh - 0866-2410978",
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
                  "Arunachal Pradesh - 9436055743",
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
                  "Assam - 6913347770",
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
                  "Bihar - 104",
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
                  "Chhattisgarh - 104",
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
                  "Gujrat - 104",
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
                  "Goa - 104",
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
                  "Haryana - 8558893911",
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
                  "Himachal Pradesh - 104",
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
                  "Jharkhand - 104",
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
            child: Text("Next Page",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
            color: Colors.blueGrey[200],
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline2() ),);
            },
          ),
        ],
      ),
    );
  }
}
