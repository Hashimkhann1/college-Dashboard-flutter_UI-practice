import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Cards extends StatelessWidget {

  Cards(this.image);

   final dynamic? image;

  @override
  Widget build(BuildContext context) {
    return
        Card(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.network(image,height: 118,),
              Text('Personal data',
                style: TextStyle(
                  color: Colors.grey,
                ),)
            ],
          ),
        );
  }
}
