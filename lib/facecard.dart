import 'package:cricket_counter/Widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/start.dart';

class facecard extends StatefulWidget {
  const facecard({Key? key}) : super(key: key);

  @override
  _facecardState createState() => _facecardState();
}

class _facecardState extends State<facecard> {
  final team1 = TextEditingController(),
      team2 = TextEditingController(),
      overs = TextEditingController();
  int val = 1, val2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const <Widget>[
            Text(
              "Cricket",
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9),
              child: Text(
                " Counter",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.cyan,
        shadowColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 3.5, left: 6.5, bottom: 5.5),
        child: ListView(
          children: <Widget>[
            TextAssign("Teams", 19),
            TextCard(context),
            TextAssign("Toss Won By", 19),
            RadioButton1("Hosts", "Visitors"),
            TextAssign("Opted to ?", 19),
            RadioButton2("Bat", "Field"),
            TextAssign("Overs?", 19),
            TextCardSingle(context),
            StartButton(context),
          ],
        ),
      ),
    );
  }

  Widget TextCard(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 1),
        width: MediaQuery.of(context).size.width,
        height: 145,
        child: Card(
          borderOnForeground: true,
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(top: .5, bottom: .5),
            child: Padding(
              padding: const EdgeInsets.all(4.75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextFormField(
                    controller: team1,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Host Team',
                      hintText: 'Host',
                    ),
                  ),
                  TextFormField(
                    controller: team2,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Visiting Team',
                      hintText: 'Visitors',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget RadioButton1(String s, String t) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 1),
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: Card(
          borderOnForeground: true,
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(top: 1.0, bottom: 1.0),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(s),
                    leading: Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(
                          () {
                            val = 1;
                          },
                        );
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(t),
                    leading: Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (value) {
                        setState(
                          () {
                            val = 2;
                          },
                        );
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget RadioButton2(String s, String t) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 1),
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: Card(
          borderOnForeground: true,
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(top: 1.0, bottom: 1.0),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(s),
                    leading: Radio(
                      value: 1,
                      groupValue: val2,
                      onChanged: (value) {
                        setState(
                          () {
                            val2 = 1;
                          },
                        );
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(t),
                    leading: Radio(
                      value: 2,
                      groupValue: val2,
                      onChanged: (value) {
                        setState(
                          () {
                            val2 = 2;
                          },
                        );
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TextCardSingle(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: Card(
          borderOnForeground: true,
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  controller: overs,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Overs',
                    hintText: '50',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  // inputFormatters: <TextInputFormatter>[
                  //   FilteringTextInputFormatter.digitsOnly
                  // ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget StartButton(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    color: Colors.cyan,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(11.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StartPage(),
                      ),
                    );
                  },
                  child: const Text('START'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
