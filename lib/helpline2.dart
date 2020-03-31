import 'package:flutter/material.dart';

import 'helpline.dart';
import 'helpline3.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid-19",
    home: Helpline2(),
  ));
}

class Helpline2 extends StatelessWidget
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline3() ),);
          },
        ),
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
                  "Karnataka - 104",
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
                  "Kerela - 0471-2552056",
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
                  "Madhya Pradesh - 0755-2527177",
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
                  "Maharashtra - 020-26127394",
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
                  "Manipur - 3852411668",
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
                  "Meghalaya - 108",
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
                  "Mizoram - 102",
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
                  "Nagaland - 7005539653",
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
                  "Odisha - 9439994859",
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
                  "Punjab - 104",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: RaisedButton(
                    elevation: 10,
                    child: Text("Previous Page",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                    color: Colors.blueGrey[200],
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline() ),);
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Helpline3() ),);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
