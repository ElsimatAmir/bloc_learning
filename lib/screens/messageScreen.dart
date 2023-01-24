import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 38, 38, 38),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0),),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text("Messages",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 250, 120, 71),

                  ),),
              ),
            ),
          ),

          Expanded(
            flex: 8,
            child: ListView(
              children: const[
                Card(
                  child: ListTile(  
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://media.istockphoto.com/id/1335941248/photo/shot-of-a-handsome-young-man-standing-against-a-grey-background.jpg?b=1&s=170667a&w=0&k=20&c=Dl9uxPY_Xn159JiazEj0bknMkLxFdY7f4tK1GtOGmis="),
                    ),
                    title: Text("Elcimat Amir"),
                    subtitle: Text("last message is here  will be shown from this user so",
                      maxLines: 2,),
                  ),
                ),
                Card(
                  child: ListTile(  
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://media.istockphoto.com/id/1335941248/photo/shot-of-a-handsome-young-man-standing-against-a-grey-background.jpg?b=1&s=170667a&w=0&k=20&c=Dl9uxPY_Xn159JiazEj0bknMkLxFdY7f4tK1GtOGmis="),
                    ),
                    title: Text("Elcimat Amir"),
                    subtitle: Text("last message is here "),
                  ),
                ),
                Card(
                  child: ListTile(  
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://media.istockphoto.com/id/1335941248/photo/shot-of-a-handsome-young-man-standing-against-a-grey-background.jpg?b=1&s=170667a&w=0&k=20&c=Dl9uxPY_Xn159JiazEj0bknMkLxFdY7f4tK1GtOGmis="),
                    ),
                    title: Text("Elcimat Amir"),
                    subtitle: Text("last message is here "),
                  ),
                ),
              ],
            ),
          ),

        ],
    )
    );
  }
}