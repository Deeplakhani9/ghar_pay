import 'package:flutter/material.dart';

import 'global.dart';

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor:Colors.orange.shade400,
        centerTitle: true,
      ),
      body:  Container(
        child: SingleChildScrollView(
        child: Column(
        children: Global.favorite.map((i) => Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2,
                color: Colors.black),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    //   color: Colors.black,
                    child: Image.asset("${i['imeg']}"),
                  ),
                  Container(
                    height: 100,
                  width: 3,
                  color: Colors.black,),
                  Text("${i['name']}",style: TextStyle(
                    fontSize: 20,
                  ),),
                  Container(
                    height: 100,
                    width: 3,
                    color: Colors.black,),
                  IconButton(onPressed: (){
                    setState(() {
                      Global.favorite.remove(i);
                    });
                  }, icon: Icon(Icons.favorite,color: Colors.pink,),),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          height: 3,
          color: Colors.orange,
        ),
      ],
    ),).toList()
    ),
    ),
      ),
    );
}
}
