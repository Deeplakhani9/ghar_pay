import 'package:flutter/material.dart';
import 'package:ghar_pay/global.dart';

class addtocart extends StatefulWidget {
  const addtocart({Key? key}) : super(key: key);

  @override
  State<addtocart> createState() => _addtocartState();
}

class _addtocartState extends State<addtocart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add to cart",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [

        ],
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: Global.cart.map((e) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black,width: 10)
                                ),
                             //   color: Colors.black,
                                child: Image.asset("${e['imeg']}"),
                              ),
                              Text("${e['name']}",style: TextStyle(
                                fontSize: 30,
                              ),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  Global.num=e['num'];
                                  e['num']+=1;

                                  e['total']=e['num'] * e['mrp'];
                                  e['totalPrice']=(e['total']*5)/100+e['total'];
                                  Global.num=e['num'];
                                });


                              }, child: Icon(Icons.add),),

                              Text("${e['num']}"),

                              ElevatedButton(onPressed: (){
                                setState(() {
                                  Global.num=e['num'];
                                  e['num']-=1;
                                  if(e['num']==0){
                                    Global.cart.remove(e);
                                  }
                                  e['total']=e['num'] * e['mrp'];
                                  e['totalPrice']=(e['total']*5)/100+e['total'];
                                });

                              }, child: Icon(Icons.remove))

                            ],
                          ),
                        ],
                      ),
                      Container(height: 10,color: Colors.black,),
                         SizedBox(height: 10,),
                    ],
                  ),).toList()
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: (){
                setState(() {
                  if(Global.num == 0){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                        Text("Please add quantity"),
                    ),
                    );
                  }
                  else{
                    Navigator.of(context).pushNamed('2');
                  }
                });
              },
              backgroundColor: Colors.orange,
              child: Icon(Icons.print,),
            ),
          ],
        ),
      ),
    );
  }
}
