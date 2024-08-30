import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        backgroundColor: const Color.fromARGB(180, 3, 168, 244),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ConversationTile(
            imagePath: 'assets/user1.png', // Replace with your asset paths
            name: 'Alice Johnson',
            lastMessage: 'Hey! How are you?',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage(userName: 'Alice Johnson')),
              );
            },
          ),
          ConversationTile(
            imagePath: 'assets/user2.png',
            name: 'Bob Smith',
            lastMessage: 'Can we meet tomorrow?',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage(userName: 'Bob Smith')),
              );
            },
          ),
          ConversationTile(
            imagePath: 'assets/user1.png', // Replace with your asset paths
            name: 'Alice Johnson',
            lastMessage: 'Hey! How are you?',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage(userName: 'Alice Johnson')),
              );
            },
          ),
          ConversationTile(
            imagePath: 'assets/user2.png',
            name: 'Bob Smith',
            lastMessage: 'Can we meet tomorrow?',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage(userName: 'Bob Smith')),
              );
            },
          ),
          ConversationTile(
            imagePath: 'assets/user1.png', // Replace with your asset paths
            name: 'Alice Johnson',
            lastMessage: 'Hey! How are you?',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage(userName: 'Alice Johnson')),
              );
            },
          ),
          ConversationTile(
            imagePath: 'assets/user2.png',
            name: 'Bob Smith',
            lastMessage: 'Can we meet tomorrow?',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage(userName: 'Bob Smith')),
              );
            },
          ),
          // Add more ConversationTile widgets here
        ],
      ),
    );
  }
}

class ConversationTile extends StatelessWidget {
  final String imagePath;
  final String name;
  final String lastMessage;
  final VoidCallback onTap;

  const ConversationTile({
    required this.imagePath,
    required this.name,
    required this.lastMessage,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(name),
      subtitle: Text(lastMessage),
      onTap: onTap,
    );
  }
}

class ChatPage extends StatelessWidget {
  final String userName;

  const ChatPage({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
        backgroundColor: const Color.fromARGB(180, 3, 168, 244),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // Add your chat messages here
              children: const [
                ChatMessage(
                  isSentByMe: true,
                  message: 'Hi! How are you?',
                ),
                ChatMessage(
                  isSentByMe: false,
                  message: 'I\'m good, thanks! How about you?',
                ),
                // More chat messages
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Handle sending message
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final bool isSentByMe;
  final String message;

  const ChatMessage({
    required this.isSentByMe,
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          color: isSentByMe ? Colors.blue[200] : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          message,
          style: TextStyle(color: isSentByMe ? Colors.black : Colors.black54),
        ),
      ),
    );
  }
}
