import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
        leading: BackButton(
          color: Colors.white,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.camera_alt, color: Colors.white),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mohammed', style: TextStyle(fontSize: 18)),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your name and add an optional profile photo.',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              initialValue: 'Digital goodies designer - Pixsellz',
              decoration: InputDecoration(
                labelText: 'Any details such as age, occupation or city.',
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Change Number'),
              subtitle: Text('+1 202 555 0147'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle change number
              },
            ),
            ListTile(
              title: Text('Username'),
              subtitle: Text('@mohammed_designer'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle change username
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Handle add account
              },
              child: Text('Add Account'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Handle log out
              },
              child: Text(
                'Log Out',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
