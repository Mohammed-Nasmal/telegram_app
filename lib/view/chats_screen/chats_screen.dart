import 'package:flutter/material.dart';
import 'package:telegram_app/dummy_db.dart';
import 'package:telegram_app/view/chatsection_screen/chat_section_screen.dart';
import 'package:telegram_app/view/info_edit_screen/info_edit_screen.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff24A1DE),
        title: Text(
          'Telegram',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white.withOpacity(.9),
            ),
            onPressed: () {
              // Add edit functionality here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mohammed"),
              accountEmail: Text("mohammed@gmail.com"),
              currentAccountPicture: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoEditScreen()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/p6.jpeg'),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff24A1DE),
              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("New Group"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("New Secret Chat"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("New Channel"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Contacts"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Calls"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Saved Messages"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.security_update_warning),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: () {
                Navigator.pop(context);
                // Add your navigation to the Help screen here
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView.separated(
        itemCount: DummyDb.messages.length,
        itemBuilder: (context, index) {
          final chat = DummyDb.messages[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chat['avatarUrl']!),
            ),
            title: Text(
              chat['name']!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chat['lastMessage']!,
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(chat['time']!),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatsSectionScreen(
                    chat: chat,
                  ),
                ),
              );
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
    );
  }
}
