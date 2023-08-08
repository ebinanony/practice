import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListviewUi(),
  ));
}

class ListviewUi extends StatelessWidget {
  var fruit = [
    'assets/fruits/apple.jpg',
    'assets/fruits/mango.jpg',
    'assets/fruits/banana.jpg',
    'assets/fruits/grapes.jpg',
    'assets/fruits/watermelon.jpg',
    'assets/fruits/kiwi.jpg',
    'assets/fruits/orange.jpg',
  ];
  var name = [
    'Apple',
    'Mango',
    'Banana',
    'Grapes',
    'Watermelon',
    'Kiwi',
    'Orange',
  ];
  var unit = ['Kg', 'Doz', 'Doz', 'Kg', 'Kg', 'pc', 'doz'];
  var price = ['20', '30', '10', '8', '25', '40', '15'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Icon(CupertinoIcons.cart),
          SizedBox(
            width: 40,
          )
        ],
        title: Center(child: Text('Product List')),
      ),
      body: ListView.builder(
          itemCount: fruit.length,
          itemBuilder: (context, index) {
            return Card(
                color: Colors.grey[350],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      fruit[index],
                      width: 50,
                      height: 70,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name : ${name[index]}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Unit: ${unit[index]}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Price:\$ ${price[index]}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 40,
                        width: 90,
                        child: Card(
                          color: Colors.black,
                          child: Center(
                              child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
