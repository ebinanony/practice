import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListviewSeperated(),
  ));
}

class ListviewSeperated extends StatelessWidget {
  List month = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'Septemper',
    'October',
    'November',
    'December'
  ];

  ListviewSeperated({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Separated'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(month[index]),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return Container(
                height: 30,
                child: Card(
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    'Advertisement',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
