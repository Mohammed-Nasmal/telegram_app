import 'package:flutter/material.dart';
import 'package:telegram_app/dummy_db.dart';
import 'package:telegram_app/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:telegram_app/view/chats_screen/chats_screen.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff24A1DE),
        title: Text(
          'Calls',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () {
              // Add edit functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('All'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Missed'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: DummyDb.calls.length,
              itemBuilder: (context, index) {
                final call = DummyDb.calls[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      call['avatarUrl'] ?? 'assets/images/default_avatar.png',
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        call['name'] ?? 'Unknown',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(call['date'] ?? ''),
                    ],
                  ),
                  subtitle: Text(
                    (call['type'] ?? '') +
                        ((call['duration'] != null &&
                                call['duration']!.isNotEmpty)
                            ? ' (${call['duration']})'
                            : ''),
                    style: TextStyle(
                      color:
                          call['status'] == 'Missed' ? Colors.red : Colors.grey,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.info, color: Colors.blue),
                    onPressed: () {
                      // Add your info button functionality here
                    },
                  ),
                  onTap: () {
                    // Add call detail functionality here
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey,
                  height: 0,
                  indent: 70,
                  endIndent: 0,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to start a new call
        },
        child: Icon(Icons.add_call),
        backgroundColor: Color(0xff24A1DE),
      ),
    );
  }
}
