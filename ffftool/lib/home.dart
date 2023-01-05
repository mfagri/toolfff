import 'package:ffftool/element.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          
           Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white10,
              image: DecorationImage(image: NetworkImage('https://images.hdqwalls.com/wallpapers/garena-free-fire-hayato-t1.jpg'),fit: BoxFit.cover,),
              border: Border.all(width: 2,
              color: Colors.amber
              )
              ),
          ),
         FloatingActionButton.extended(
        label: Text('Get Started'), // <-- Text
        backgroundColor: Colors.white,
        icon: Icon( // <-- Icon
          Icons.play_circle,
          size: 24.0,
        ),
        onPressed: () {
              Navigator.push (
    context,
    MaterialPageRoute(builder: (context) => myelements()),
);
        },
      ),
          FloatingActionButton.extended(
        label: Text('Share This App'), // <-- Text
        backgroundColor: Colors.white,
        icon: Icon( // <-- Icon
          Icons.share,
          size: 24.0,
        ),
        onPressed: () {},
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        FloatingActionButton.extended(
        label: Text('Rate Our App'), // <-- Text
        backgroundColor: Colors.white,
        icon: Icon( // <-- Icon
          Icons.star,
          size: 24.0,
        ),
        onPressed: () {},
      ),
        FloatingActionButton.extended(
        label: Text('Pivacy Policy'), // <-- Text
        backgroundColor: Colors.white,
        icon: Icon( // <-- Icon
          Icons.lock,
          size: 24.0,
        ),
        onPressed: () {},
      ),
        ],),
        Container(
          height: 50,
          color: Colors.white,
        )
      ]),
    );
  }
}