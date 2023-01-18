
import 'package:flutter/material.dart';
import 'package:ghar_pay/addtocart.dart';
import 'package:ghar_pay/bill.dart';
import 'package:ghar_pay/favorite.dart';
import 'package:ghar_pay/global.dart';
import 'package:ghar_pay/splash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        '/': (context) => myapp(),
        'splash' : (context) => splash(),
        '1':(context)=>addtocart(),
        '2':(context)=>Bill(),
        '3':(context)=>favorite(),
      },
    ),
  );
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Ghar pay"),
      centerTitle: true,
      backgroundColor:Colors.orange.shade400,

      actions: [
        IconButton(onPressed: (){
          setState(() {
            Navigator.of(context).pushNamed('3');
          });
        }, icon:Icon(Icons.favorite_outlined)),
        IconButton(onPressed: (){
          setState(() {
            Navigator.of(context).pushNamed('1');
          });
        }, icon: Icon(Icons.shopping_cart))
      ],
    ),
      drawer: Drawer(
        child: ElevatedButton(onPressed: (){
          setState(() {
            Navigator.of(context).pushNamed('2');

          });

        },
          child: Text("Go to bill"),style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orange.shade200,
        child:GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: Global.item.length,
                    itemBuilder: (context, i){
                      return GestureDetector(
                        child: Container(
                          width: 250,
                          height: 400,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Align(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(Global.item[i]['imeg'],height:100,),
                                Text("${Global.item[i]['name']}/${Global.item[i]['mrp']}"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  // IconButton(onPressed: (){
                                  //   setState(() {
                                  //     Global.favorite.add(Global.item[i]);
                                  //
                                  //   });
                                  // },
                                  //     icon: Icon(Icons.favorite_outline,color:Colors.pink,),
                                  // ):
                                  // IconButton(onPressed: (){
                                  //   setState(() {
                                  //     Global.favorite.add(Global.item[i]);
                                  //   });
                                  // },
                                  //   icon: Icon(Icons.favorite,color:Colors.pink,),
                                  // ),


                                  IconButton(onPressed: (){
                                    setState(() {
                                      Navigator.of(context).pushNamed('1');
                                    Global.cart.add(Global.item[i]);
                                    });

                                  }, icon: Icon(Icons.add_shopping_cart)),
                                ],
                              ),
                              ],
                            ),
                          ),
                       ),
                      );
                    }
                ),
      ),
    );
  }
}
