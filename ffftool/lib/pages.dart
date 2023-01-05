import 'package:cached_network_image/cached_network_image.dart';
import 'package:ffftool/affich.dart';
import 'package:ffftool/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class pages extends StatefulWidget {
  List d;
  pages({super.key, required this.d});

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(backgroundColor: Colors.black,
      elevation: 0,),
      body: SafeArea(
        child: AnimationLimiter(
          child: GridView.count(
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(8.0),
            crossAxisCount: 2,
            children: List.generate(
              widget.d.length,
              (int index) {
                return AnimationConfiguration.staggeredGrid(
                  columnCount: widget.d.length,
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  child: ScaleAnimation(
                    scale: 0.5,
                    child: InkWell(
                      onTap: () {
                                 Navigator.push (
    context,
    MaterialPageRoute(builder: (context) => fullscreen(url: widget.d[index],)),
);
                      },
                      child: FadeInAnimation(child: Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: CachedNetworkImageProvider(widget.d[index]),fit: BoxFit.fill),
                            color: Colors.white30,
                            border: Border.all(width: 2,
                            color: Colors.amber
              )
                        ),
                        //child: Image.asset('/lib/asset/cat.pn'),
                      )),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// class EmptyCard extends StatelessWidget {
//   String s;
//   EmptyCard({super.key, required this.s});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: 50,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         image: DecorationImage(image: s)
//       ),

//     );
//   }
// }

// class view extends StatefulWidget {
//   const view({Key? key}) : super(key: key);

//   @override
//   _viewState createState() => _viewState();
// }

// class _viewState extends State<view> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(5),
//       height: 40,
//       width: 40,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
//       image: DecorationImage(image: NetworkImage(Guns[i]),),
//       color: Colors.white30
//       ),
//     );
//   }
// }
