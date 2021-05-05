import 'package:flutter/material.dart';

class GridViewExtent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Demo')),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        children: [
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
          Image.network('https://picsum.photos/250?image=5'),
          Image.network('https://picsum.photos/250?image=6'),
          Image.network('https://picsum.photos/250?image=7'),
          Image.network('https://picsum.photos/250?image=8'),
          Image.network('https://picsum.photos/250?image=9'),
          Image.network('https://picsum.photos/250?image=10'),
          Image.network('https://picsum.photos/250?image=11'),
          Image.network('https://picsum.photos/250?image=12'),
          Image.network('https://picsum.photos/250?image=13'),
          Image.network('https://picsum.photos/250?image=14'),
          Image.network('https://picsum.photos/250?image=15'),
          Image.network('https://picsum.photos/250?image=16'),
          Image.network('https://picsum.photos/250?image=17'),
          Image.network('https://picsum.photos/250?image=18'),
          Image.network('https://picsum.photos/250?image=19'),
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
