import 'package:flutter/material.dart';

class GridCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Demo')),
      body: Column(
        children: [
          Spacer(
            flex: 3,
          ),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24, right: 24),
            children: [
              DialKey(
                number: '1',
                letters: '',
              ),
              DialKey(
                number: '2',
                letters: 'ABC',
              ),
              DialKey(
                number: '3',
                letters: 'DEF',
              ),
              DialKey(
                number: '4',
                letters: 'GHI',
              ),
              DialKey(
                number: '5',
                letters: 'JKL',
              ),
              DialKey(
                number: '6',
                letters: 'MNO',
              ),
              DialKey(
                number: '7',
                letters: 'PQRS',
              ),
              DialKey(
                number: '8',
                letters: 'TUV',
              ),
              DialKey(
                number: '9',
                letters: 'WXYZ',
              ),
              DialKey(
                number: '*',
                letters: '',
              ),
              DialKey(
                number: '0',
                letters: '+',
              ),
              DialKey(
                number: '#',
                letters: '',
              ),
            ],
          ),
          Spacer()
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
