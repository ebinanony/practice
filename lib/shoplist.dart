import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ShopList(),
  ));
}

class ShopList extends StatelessWidget {
  var image = [
    'assets/images/bag.jpg',
    'assets/images/sunglass.jpg',
    'assets/images/belt.webp',
    'assets/images/chain.jpg',
    'assets/images/earings.jpg',
    'assets/images/sockss.webp'
  ];
  var price = ['120.00', '58.00', '35.00', '98.00', '34.00', '12.00'];
  var name = ['Bag', 'Sunglass', 'Belt', 'Chain', 'Earings', 'Socks'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
        title: const Text(
          "SHRINE",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          const Icon(Icons.search),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.tune),
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              color: Colors.white60,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Expanded(
                      child: Image.asset(
                    image[index],
                    height: 100,
                    fit: BoxFit.cover,
                  )),
                  Text(
                    'name : ${name[index]}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    'price : \$ ${price[index]}',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.blue,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
