import 'package:flutter/material.dart';

class HistoriPemesanan extends StatefulWidget {
  const HistoriPemesanan({super.key});

  @override
  State<HistoriPemesanan> createState() => _HistoriPemesananState();
}

class _HistoriPemesananState extends State<HistoriPemesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histori Pemesanan'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Table(
            border: TableBorder.all(color: Colors.white30),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              const TableRow(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Title 1'),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Title 2'),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Title 3'),
                    ),
                  ),
                ],
              ),
              ...List.generate(
                30,
                (index) => const TableRow(
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Cell 1'),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Cell 2'),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Cell 3'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
