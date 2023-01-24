import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ProfaileScreen extends StatelessWidget {
  const ProfaileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              decoration:const  BoxDecoration(
                color: Color.fromARGB(255, 38, 38, 38),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: CircleAvatar(
                        radius: 45.0,
                        backgroundImage: NetworkImage("https://media.istockphoto.com/id/1335941248/photo/shot-of-a-handsome-young-man-standing-against-a-grey-background.jpg?b=1&s=170667a&w=0&k=20&c=Dl9uxPY_Xn159JiazEj0bknMkLxFdY7f4tK1GtOGmis="),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Elcimat Amir",
                        style: TextStyle(
                          fontSize: 20.0,
                          color:Color.fromARGB(255, 250, 120, 71),
                        ),),
                    ),
                  ),

                ]),
              
            )),

          Expanded(
            flex: 5,
            child:Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 38, 38, 38),
                      offset: Offset(1,2),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(),
              ),
            )),
        ],
      
      ),
    );
  }
}