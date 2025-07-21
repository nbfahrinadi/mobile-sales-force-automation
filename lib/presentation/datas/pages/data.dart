import 'package:flutter/material.dart';

class OrderData extends StatefulWidget {
  const OrderData({super.key});

  @override
  State<OrderData> createState() => _OrderDataState();
}

class _OrderDataState extends State<OrderData> {
  int _Count = 0;

  void _incrementCount() {
    setState(() {
      _Count++;
    });
  }

  void _decrementCunot() {
    setState(() {
      _Count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListTile(
        title: const Text('Product'),
        subtitle: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('desckripsi'),
            Text('Rp. 0, 00'),
          ],
        ),
        isThreeLine: true,
        trailing: Row(
          children: [
            FloatingActionButton(
              onPressed: _incrementCount,
              child: const Icon(Icons.add),
            ),
            Text('$_Count'),
            FloatingActionButton(
              onPressed: _decrementCunot,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
        leading: const Icon(
          Icons.table_bar,
          size: 50,
        ),
      ),
    );
  }
}
