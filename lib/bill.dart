import 'package:flutter/material.dart';
import 'global.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  double tp = 0;

  @override
  void initState() {
    super.initState();
    Global.cart.forEach((e) {
      tp+=e['totalPrice'] as double;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(
               children: [
                 Container(
                   width: 90,
                   height: 90,
                   child: Image.asset("assets/images/WhatsApp_Image_2022-12-12_at_12.42.19_PM-removebg-preview (1).png"),
                 ),
                 Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Ghar pay",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
               ],
             ),

            Container(
              margin: EdgeInsets.all(10),
              height: 2,
            color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                SizedBox(width: 40,),
                Expanded(
                  flex: 1,
                  child: Text(
                    "MENU",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Text(
                    "PRICE",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  flex: 0,
                  child: Text(
                    "QUANTITY",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  flex: 1,
                  child: Text(
                    "TOTAL",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(children: [
              ...Global.cart
                  .map(
                    (e) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            child: Image.asset(e['imeg']),
                          ),
                          Text(
                            "${e['name']}",
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Text(
                        "${e['mrp']}",
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "${e['num']}",
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "${e['total']}",
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ).toList(),

              Container(
                height: 3,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1),
                ),
                child: Text(
                  "TOTAL :- $tp",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
