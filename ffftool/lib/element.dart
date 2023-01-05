import 'package:ffftool/data.dart';
import 'package:ffftool/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class myelements extends StatefulWidget {
  const myelements({super.key});

  @override
  State<myelements> createState() => _myelementsState();
}

class _myelementsState extends State<myelements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.black87,
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            mycontainer(
              col: Colors.blueAccent,
              s: "Skins",
              n: 0,
              path: "https://images2.alphacoders.com/122/1228773.jpg",
            ),
            SizedBox(
              height: 15,
            ),
            mycontainer(col: Colors.redAccent, s: "Emotes", n: 1,path: "https://images7.alphacoders.com/107/1079489.jpg",),
            SizedBox(
              height: 15,
            ),
            mycontainer(col: Colors.blueAccent, s: "Guns", n: 2,path: 'https://tse4.mm.bing.net/th?id=OIP.9yx_OUjDCtgWEY6wTp5IlgHaEK&pid=Api&P=0',),
            SizedBox(
              height: 15,
            ),
            mycontainer(col: Colors.blueAccent, s: "Ranks", n: 3,path: "https://cdn141.picsart.com/275276993000211.png?r240x240",),
          ]),
        ));
  }
}

class mycontainer extends StatelessWidget {
  Color col;
  String s;
  String path;
  int n;
  mycontainer({super.key, required this.col, required this.s, required this.n,required this.path});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (n == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => pages(
                      d: skins,
                    )),
          );
        }
        if (n == 1) {
           Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => pages(
                      d: skins,
                    )),
          );
        }
        if (n == 2) {
           Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => pages(
                      d: Guns,
                    )
                    ),
          );
        }

        if (n == 3) {
           Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => pages(
                      d: Ranks,
                    )),
          );
        }
      },
      child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2 - 20,
                width: MediaQuery.of(context).size.height * 0.2 - 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black54,
                    image: DecorationImage(image: NetworkImage(path),fit: BoxFit.cover,),
                    border: Border.all(width: 2,
              color: Colors.amber
              )
                    ),
              ),
              Text(s,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
            ],
          )),
    );
  }
}
