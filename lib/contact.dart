import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Contact(),
    debugShowCheckedModeBanner: false,
  ));
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple ContactList'),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text('John Juda'),
            subtitle: Text("656864316641616"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            title: Text('Antony K M'),
            subtitle: Text("9061784544"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            title: Text('Amma'),
            subtitle: Text("9061784555"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.deepOrange,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            title: Text('Lalettan'),
            subtitle: Text("8745120223"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            title: Text('CID'),
            subtitle: Text("6564785126"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: const Text('Chalakudy'),
            subtitle: const Text("8136849300"),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade500,
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: const Text('Sharuk'),
            subtitle: const Text("7845965855"),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.purple.shade900,
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: const Text('Suhail'),
            subtitle: const Text("9784568955"),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade200,
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
