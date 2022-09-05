import 'package:flutter/material.dart';
import 'package:flutter_2/screens/cards.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height*.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/videos/neoncolored-colorful-gradient-background-video-id1302265033?s=640x640'),
                fit: BoxFit.cover,
                alignment: Alignment.center
              )
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 16.0),
                  height: 70.0,
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.face
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hashim khan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),),
                          Text('0313 0000000',style: TextStyle(
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 6,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Cards('https://www.svgrepo.com/show/65453/avatar.svg'),
                    Cards('https://www.svgrepo.com/show/64213/avatar.svg'),
                    Cards('https://www.svgrepo.com/show/64213/avatar.svg'),
                    Cards('https://www.svgrepo.com/show/65453/avatar.svg'),
                    Cards('https://www.svgrepo.com/show/65453/avatar.svg'),
                    Cards('https://www.svgrepo.com/show/64213/avatar.svg'),
                  ],
                  crossAxisCount: 2,

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
