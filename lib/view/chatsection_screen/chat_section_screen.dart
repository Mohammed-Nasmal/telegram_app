import 'package:flutter/material.dart';
import 'package:telegram_app/dummy_db.dart';
import 'package:telegram_app/view/info_screen/info_screen.dart';

class ChatsSectionScreen extends StatefulWidget {
  const ChatsSectionScreen({super.key});

  @override
  State<ChatsSectionScreen> createState() => _ChatsSectionScreenState();
}

class _ChatsSectionScreenState extends State<ChatsSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffB5CADD),
        appBar: AppBar(
          backgroundColor: Color(0xff24A1DE),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Martha Craig",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "last seen just now",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoScreen()),
                );
              },
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/25748615/pexels-photo-25748615/free-photo-of-portrait-of-a-young-man-reading-a-newspaper-outdoors.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: DummyDb.messagess.length,
                itemBuilder: (context, index) {
                  final message = DummyDb.messagess[index];
                  return ChatBubble(
                    isMe: message['isMe']!,
                    text: message['text']!,
                    time: message['time']!,
                    imageUrl: message['imageUrl'],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.attach_file_outlined,
                          color: Color(0xff858E99),
                        ),
                        hintText: 'Message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.send,
                      size: 30,
                    ),
                    onPressed: () {
                      // Handle send message
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String text;
  final String time;
  final String? imageUrl;

  const ChatBubble({
    required this.isMe,
    required this.text,
    required this.time,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isMe ? Color(0xffE1FEC6) : Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment:
                    isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  if (imageUrl != null) Image.network(imageUrl!),
                  if (imageUrl != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(text),
                    )
                  else
                    Text(text),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                time,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
