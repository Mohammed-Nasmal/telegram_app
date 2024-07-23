import 'package:flutter/material.dart';
import 'package:telegram_app/view/edit_profile_screen/edit_profile.dart';

class InfoEditScreen extends StatefulWidget {
  @override
  State<InfoEditScreen> createState() => _InfoEditScreenState();
}

class _InfoEditScreenState extends State<InfoEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, color: Colors.blue),
                    SizedBox(width: 4),
                    Text(
                      'Back',
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Text(
                'Info',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfileScreen(),
                      ));
                },
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/p6.jpeg'),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Column(
              children: [
                Text(
                  'Martha Craig',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'online',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('main', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(
              '+1 202 555 0181',
              style: TextStyle(color: Colors.green),
            ),
            leading: Icon(Icons.phone),
          ),
          ListTile(
            title: Text('home', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(
              '+1 202 555 0113',
              style: TextStyle(color: Colors.blue),
            ),
            leading: Icon(Icons.home),
          ),
          Divider(),
          ListTile(
            title: Text('bio', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Design adds value faster, than it adds cost'),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title:
                Text('username', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('@zack_life', style: TextStyle(color: Colors.blue)),
            leading: Icon(Icons.person),
          ),
          Divider(),
          ListTile(
            title: Text('Send Message', style: TextStyle(color: Colors.blue)),
            leading: Icon(Icons.message, color: Colors.blue),
            onTap: () {
              // Add send message functionality here
            },
          ),
          ListTile(
            title: Text('Share Contact', style: TextStyle(color: Colors.blue)),
            leading: Icon(Icons.share, color: Colors.blue),
            onTap: () {
              // Add share contact functionality here
            },
          ),
          ListTile(
            title:
                Text('Start Secret Chat', style: TextStyle(color: Colors.blue)),
            leading: Icon(Icons.lock, color: Colors.blue),
            onTap: () {
              // Add start secret chat functionality here
            },
          ),
          Divider(),
          ListTile(
            title: Text('Shared Media'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Add shared media functionality here
            },
          ),
          ListTile(
            title: Text('Notifications'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Enabled', style: TextStyle(color: Colors.grey)),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            onTap: () {
              // Add notifications functionality here
            },
          ),
          ListTile(
            title: Text('Groups In Common'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('1', style: TextStyle(color: Colors.grey)),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            onTap: () {
              // Add groups in common functionality here
            },
          ),
          Divider(),
          ListTile(
            title: Text('Block User', style: TextStyle(color: Colors.red)),
            onTap: () {
              // Add block user functionality here
            },
          ),
        ],
      ),
    );
  }
}
