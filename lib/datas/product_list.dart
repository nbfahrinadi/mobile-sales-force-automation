import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  static const _persediaan = ListTile(
    title: Text('Product'),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('desckripsi'),
        // Text('Rp. 0, 00'),
      ],
    ),
    // isThreeLine: true,
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '0',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Item'),
      ],
    ),
    leading: Icon(
      Icons.table_bar,
      size: 50,
    ),
  );
  final _kosong = const ListTile();
  final _new = const ListTile();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(color: Colors.grey[200], child: _persediaan),
          Container(color: Colors.grey, child: _persediaan),
          Container(color: Colors.grey[200], child: _persediaan),
          Container(color: Colors.grey, child: _persediaan),
          Container(color: Colors.grey[200], child: _persediaan),
          Container(color: Colors.grey, child: _persediaan),
          Container(color: Colors.grey[200], child: _persediaan),
          Container(color: Colors.grey, child: _persediaan),
          Container(color: Colors.grey[200], child: _persediaan),
          Container(color: Colors.grey, child: _persediaan),
          Container(color: Colors.grey[200], child: _persediaan),
          Container(color: Colors.grey, child: _persediaan),
        ],
      ),
    );
  }
}
