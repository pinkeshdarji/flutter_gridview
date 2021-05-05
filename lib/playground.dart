import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PlayGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Demo')),
      body: Column(
        children: [
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              shrinkWrap: false,
              children: [
                Container(
                    color: Colors.grey,
                    child: Image.network('https://picsum.photos/250?image=1')),
                Container(
                    color: Colors.grey,
                    child: Image.network('https://picsum.photos/250?image=2')),
                Image.network('https://picsum.photos/250?image=2'),
                Image.network('https://picsum.photos/250?image=3'),
                Image.network('https://picsum.photos/250?image=4'),
                Image.network('https://picsum.photos/250?image=5'),
                Image.network('https://picsum.photos/250?image=6'),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Close'))
        ],
      ),
    );
  }
}

class DialKey extends StatelessWidget {
  final String number;
  final String letters;

  DialKey({this.number, this.letters});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80,
        height: 80,
        color: Colors.teal,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.grey.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$number',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$letters',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
