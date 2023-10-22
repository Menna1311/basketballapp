import 'package:flutter/material.dart';

void main() {
  runApp(bsaketball_counter());
}

class bsaketball_counter extends StatefulWidget {
  @override
  State<bsaketball_counter> createState() => _bsaketball_counterState();
}

class _bsaketball_counterState extends State<bsaketball_counter> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamA',
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(125, 50)),
                      onPressed: () {
                        setState(() {
                          teamA++;
                        });
                      },
                      child: Text('Add 1 Point')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(125, 50)),
                      onPressed: () {
                        setState(() {
                          teamA += 2;
                        });
                      },
                      child: Text('Add 2 Point')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(125, 50)),
                      onPressed: () {
                        setState(() {
                          teamA += 3;
                        });
                      },
                      child: Text('Add 3 Point')),
                ]),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 50,
                    endIndent: 200,
                    color: Colors.black,
                  ),
                ),
                Column(children: [
                  Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamB',
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(125, 50)),
                      onPressed: () {
                        setState(() {
                          teamB++;
                        });
                      },
                      child: Text('Add 1 Point')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(125, 50)),
                      onPressed: () {
                        setState(() {
                          teamB += 2;
                        });
                      },
                      child: Text('Add 2 Point')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(125, 50)),
                      onPressed: () {
                        setState(() {
                          teamB += 3;
                        });
                      },
                      child: Text('Add 3 Point')),
                ]),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, minimumSize: Size(125, 50)),
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                },
                child: Text('reset')),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
