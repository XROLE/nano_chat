import 'package:flutter/material.dart';
import 'package:nano_chat/data/model/users.dart';
import 'package:nano_chat/ui/chatPage/index.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  bool isDarkMood = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: isDarkMood ? Colors.black : Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isDarkMood = !isDarkMood;
                      });
                    },
                    child: Icon(
                      Icons.nightlight_round,
                      color: isDarkMood
                          ? Colors.white.withOpacity(0.6)
                          : Colors.black.withOpacity(0.2),
                    ),
                  ),
                  Text(
                    'Messages',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: isDarkMood ? Colors.white : Colors.black),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://tse1.mm.bing.net/th?id=OIP.quu5PzWrfGHyeH367VZPWAAAAA&pid=Api&P=0&w=300&h=300',
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Text(
                'Stories',
                style: TextStyle(color: Colors.black.withOpacity(0.3)),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 80,
              child: ListView.builder(
                itemCount: mockUsersList.length - 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) => Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            border: mockUsersList[i + 5].isRead
                                ? Border.all(color: Color.fromRGBO(229, 112, 86, 1), width: 3)
                                : null,
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                mockUsersList[i + 5].imageUrl,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(height: 7),
                        Text(
                          mockUsersList[i + 5].name.split(' ')[0],
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: isDarkMood ? Colors.white : Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(
              height: MediaQuery.of(context).size.height - 280,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: mockUsersList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatPage(
                                        isDarkMood: isDarkMood,
                                        isOnline: mockUsersList[i].isOnline,
                                        imageUrl: mockUsersList[i].imageUrl,
                                        name: mockUsersList[i].name,
                                      )));
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image.network(
                                            mockUsersList[i].imageUrl,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    if (mockUsersList[i].isOnline)
                                      Positioned(
                                        left: 35,
                                        child: Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      mockUsersList[i].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isDarkMood ? Colors.white : Colors.black),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      mockUsersList[i].message,
                                      style: TextStyle(
                                          color: !mockUsersList[i].isRead
                                              ? Colors.blue[400]
                                              : isDarkMood
                                                  ? Colors.white.withOpacity(0.7)
                                                  : Colors.black.withOpacity(0.5),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        mockUsersList[i].lastMessageTime,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: isDarkMood
                                                ? Colors.white.withOpacity(0.7)
                                                : Colors.black),
                                      ),
                                      SizedBox(height: 5),
                                      if (mockUsersList[i].unReadCount > 0)
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.blue, shape: BoxShape.circle),
                                          child: Center(
                                              child: Text(
                                            mockUsersList[i].unReadCount.toString(),
                                            style: TextStyle(fontSize: 10, color: Colors.white),
                                          )),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 35),
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
