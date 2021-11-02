import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final striker = TextEditingController();
  final non_striker = TextEditingController();
  final opening_bowler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Openers"),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: <Widget>[
          TextCardSingle(striker),
        ],
      ),
    );
  }

  TextCardSingle(
    TextEditingController st,
  ) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 350,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  controller: st,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Striker',
                    hintText: 'Player Name',
                  ),
                ),
                TextField(
                  controller: non_striker,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Non Striker',
                    hintText: 'Player Name',
                  ),
                ),
                TextField(
                  controller: opening_bowler,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Opening Bowler',
                    hintText: 'Player Name',
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: Text("REGISTER", style: TextStyle(fontSize: 25)),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.cyan),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.5),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => RegisterPage(),
                      //   ),
                      // );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
