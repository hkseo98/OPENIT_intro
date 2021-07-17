import 'package:flutter/material.dart';
import 'package:openitintro/src/widget/custom_text.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 700,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.amber, Colors.blue])),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: CustomText(
            text: "Team",
            size: 30,
            weight: FontWeight.bold,
          ),
        ),
        Positioned(
          top: 100,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
