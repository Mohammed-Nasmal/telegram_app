import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                ),
                Text(
                  'Info',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/p6.jpeg"),
              ),
            ),
          ),
          Center(
            child: Text(
              'Martha Craig',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'main',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '+1 202 555 0181',
              style: TextStyle(color: Colors.green),
            ),
          ),
          ListTile(
            title: Text(
              'home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '+1 202 555 0113',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'bio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Design adds value faster, than it adds cost',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text('Enabled'),
          ),
          Divider(),
          ListTile(
            title: Center(
              child: Text(
                'Delete Contact',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
            onTap: () {
              // Add delete contact functionality here
            },
          ),
        ],
      ),
    );
  }
}
