import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff24A1DE),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          UserHeader(),
          SettingsList(),
        ],
      ),
    );
  }
}

class UserHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=600'),
          ),
          title: Text('Jacob W.'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('+1 202 555 0147'),
              Text('@jacob_d'),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text('JD'),
          ),
          title: Text('Jacob Design'),
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Add Account'),
        ),
      ],
    );
  }
}

class SettingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        ListTile(
          leading: Icon(Icons.bookmark),
          title: Text('Saved Messages'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text('Recent Calls'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.sticky_note_2),
          title: Text('Stickers'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('15'),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications and Sounds'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text('Privacy and Security'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.storage),
          title: Text('Data and Storage'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.color_lens),
          title: Text('Appearance'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
