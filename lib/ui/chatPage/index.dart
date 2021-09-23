import 'package:flutter/material.dart';
import 'package:nano_chat/data/model/users.dart';

class ChatPage extends StatefulWidget {
  final bool isDarkMood;
  final bool isOnline;
  final String name;
  final String imageUrl;
  const ChatPage({Key? key, this.isDarkMood = false, this.isOnline = false, this.imageUrl = '', this.name = ''}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: widget.isDarkMood ? Colors.black : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: widget.isDarkMood
                                ? Colors.white.withOpacity(0.7)
                                : Colors.black.withOpacity(0.35),
                            size: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      widget.imageUrl,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              if(widget.isOnline)
                              Positioned(
                                left: 27,
                                top: 2,
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
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: widget.isDarkMood
                                        ? Colors.white.withOpacity(0.8)
                                        : Colors.black),
                              ),
                              Text(
                                'online now',
                                style: TextStyle(color: Colors.green, fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.video_call,
                            size: 20,
                            color: widget.isDarkMood
                                ? Colors.white.withOpacity(0.7)
                                : Colors.black.withOpacity(0.4),
                          ),
                          SizedBox(width: 20),
                          Icon(Icons.call,
                              size: 15,
                              color: widget.isDarkMood
                                  ? Colors.white.withOpacity(0.7)
                                  : Colors.black.withOpacity(0.4)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: MediaQuery.of(context).size.height - 340,
              child: Column(
                children: [
                  Text(
                    'Yesterday'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 12,
                        color: widget.isDarkMood
                            ? Colors.white.withOpacity(0.7)
                            : Colors.black.withOpacity(0.5)),
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          child: Text('Hi Lucy, how\'s your day going?'),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          child: Text(
                            'You know how it goes ......',
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 122, 251, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          child: Text('Do you know starttuks?'),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          child: Text(
                            'Would be awesome',
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 122, 251, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          child: Text('Please send me a voice note'),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          child: Text(
                            'Hahahahahaa shut up!',
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(41, 122, 251, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Container(
              color: widget.isDarkMood
                  ? Color.fromRGBO(32, 32, 32, 1)
                  : Color.fromRGBO(245, 245, 245, 1),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          child: Row(children: [
                            Icon(
                              Icons.mic,
                              color: widget.isDarkMood
                                  ? Colors.white.withOpacity(0.7)
                                  : Colors.black.withOpacity(0.5),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.local_see_outlined,
                              color: widget.isDarkMood
                                  ? Colors.white.withOpacity(0.7)
                                  : Colors.black.withOpacity(0.5),
                            ),
                          ]),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.black.withOpacity(0.1))),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: widget.isDarkMood ? Color.fromRGBO(226, 110, 85, 0.8) : Color.fromRGBO(226, 110, 85, 1), shape: BoxShape.circle),
                            child: Icon(
                              Icons.send,
                              size: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
