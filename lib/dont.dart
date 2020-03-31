
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Covid-19",
    home: Precaution(),
  ));
}

class Precaution extends StatelessWidget
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
        title: Center(child: Text("Precautions and Myths of COVID-19",style: TextStyle(color: Colors.black),)),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 10.0,
            color: Colors.white12,
            child: ListTile(
              title: Center(
                child: Text(
                  "Do\'s of COVID-19",
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
                  "Wash your hands frequently.\nWashing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.",
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
                  "Maintain social distancing\nWhen someone coughs or sneezes they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person coughing has the disease.",
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
                "Avoid touching eyes, nose and mouth\nHands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and can make you sick.",
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
                  "Myths of COVID-19",
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
                "COVID-19 virus cannot be transmitted in areas with hot and humid climates",
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
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Text(
                "Cold weather and snow CANNOT kill the new coronavirus.",
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
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Text(
                "Taking a hot bath does not prevent the new coronavirus disease",
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
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Text(
                "Spraying alcohol or chlorine all over your body kill the new coronavirus?",
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
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Text(
                "Vaccines against pneumonia protect you against the new coronavirus",
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
            color: Colors.blueGrey[200],
            margin: EdgeInsets.only(top: 15),
            child: ListTile(
              title: Text(
                "Cold weather and snow CANNOT kill the new coronavirus.",
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
