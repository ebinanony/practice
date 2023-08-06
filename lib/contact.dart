import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() {
  runApp(MaterialApp(
    home: Contact(),
    debugShowCheckedModeBanner: false,
  ));
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple ContactList'),
      ),
      body: ListView(
        children: [
          ListTile(
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
          ListTile(
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
          ListTile(
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
          ListTile(
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
          ListTile(
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
            title: Text('Chalakudy'),
            subtitle: Text("8136849300"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade500,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: Text('Sharuk'),
            subtitle: Text("7845965855"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.purple.shade900,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: Text('Suhail'),
            subtitle: Text("9784568955"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade200,
              child: Icon(
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
