// import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ffftool/spin.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:photo_view/photo_view.dart';
import 'package:path_provider/path_provider.dart';

class fullscreen extends StatefulWidget {
  String url;
  fullscreen({super.key, required this.url});

  @override
  State<fullscreen> createState() => _fullscreenState();
}

class _fullscreenState extends State<fullscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text("Earn Skins",style: TextStyle(color: Colors.amber,fontSize: 24),),
        ),
        body: Stack(children: [
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: CachedNetworkImageProvider(widget.url),fit: BoxFit.fill),
              border: Border.all(width: 2,
              color: Colors.amber
              ),
              // boxShadow: [BoxShadow(
              //   offset: Offset.zero,
              //   //color: Colors.white12,
              //   blurRadius: 0,
              // spreadRadius: 0,
              // )]
              ),
              
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Colors.amber
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                InkWell(
                  onTap: () {
                                    
                                           Navigator.push (
    context,
    MaterialPageRoute(builder: (context) => ecospin()),
);
                  },
                  child: Container(height: 100,width:150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black,
                  image: DecorationImage(image: NetworkImage('https://www.mega-soundz.com.au/wp-content/uploads/2018/02/spin-and-win.png')),
                  border: Border.all(width: 2,
              color: Colors.black
              ),
              
                  ),
                  
                  ),
                ),
                InkWell(
                  onTap: () {
                                           Navigator.push (
    context,
    MaterialPageRoute(builder: (context) => ecospin()),
);
                  },
                  child: Container(height: 100,width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black,
                  image: DecorationImage(image: NetworkImage('https://vectorified.com/images/scratch-icon-13.png')),
                    border: Border.all(width: 2,
              color: Colors.black
              )
                  ),
                  ),
                ),
              ],),
            )
          ]),
    ),
        ]));
  }

  Future<void> downloadImage() async {
    print("here");
    Dio dio = Dio();
    String progressString = "";
    try {
      var directory = await getExternalStorageDirectory();
      // var dir = await getApplicationDocumentsDirectory();

      await dio.download(widget.url,
          "${directory!.path}/${DateTime.now().toUtc().toIso8601String()}.png",
          onReceiveProgress: (rec, total) {
        print("Rec: $rec , Total: $total");

        setState(() {
          //downloading = true;
          progressString = ((rec / total) * 100).toStringAsFixed(0) + "%";
        });
      });
    } catch (e) {
      print(e);
    }

    setState(() {
      //downloading = false;
      progressString = "Completed";
    });
  }
}
