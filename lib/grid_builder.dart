import 'package:flutter/material.dart';

class GridBuilderDemo extends StatefulWidget {
  @override
  _GridBuilderDemoState createState() => _GridBuilderDemoState();
}

class _GridBuilderDemoState extends State<GridBuilderDemo> {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Demo')),
      body: Column(
        children: [
          TextField(),
          Expanded(
            child: LayoutBuilder(builder: (context, constraints) {
              return GridView.builder(
                itemCount: 100,
                itemBuilder: (context, index) => ItemTile(index),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
                  childAspectRatio: 5,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.primaries[itemNo % Colors.primaries.length];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: color.withOpacity(0.3),
        onTap: () {},
        leading: Container(
          width: 50,
          height: 30,
          color: color.withOpacity(0.5),
          child: Placeholder(
            color: color,
          ),
        ),
        title: Text(
          'Product $itemNo',
          key: Key('text_$itemNo'),
        ),
      ),
    );
  }
}
