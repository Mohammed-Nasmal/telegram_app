import 'package:flutter/material.dart';
import 'package:telegram_app/dummy_db.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff24A1DE),
        title: Text(
          'Contacts',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.blue),
            onPressed: () {
              // Add functionality to add new contact
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person_add, color: Colors.blue),
            title: Text(
              'Add People Nearby',
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              // Add functionality to add people nearby
            },
          ),
          ListTile(
            leading: Icon(Icons.group_add, color: Colors.blue),
            title: Text(
              'Invite Friends',
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              // Add functionality to invite friends
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: DummyDb.contacts.length,
              itemBuilder: (context, index) {
                final contact = DummyDb.contacts[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      contact['avatarUrl'] ??
                          'assets/images/default_avatar.png',
                    ),
                  ),
                  title: Text(
                    contact['name'] ?? 'Unknown',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    contact['status'] ?? '',
                    style: TextStyle(
                      color: contact['status'] == 'online'
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ),
                  onTap: () {
                    // Add functionality for contact details
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
