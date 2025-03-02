import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('E-Bin'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                  height: 210,
                  width: 210,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow:[BoxShadow(
                        color:Colors.purpleAccent,
                        spreadRadius:2,
                      )],
                      border: Border.all(
                          color: Colors.black,
                          width: 5)),
                          child:Text("this is container"),
                          ),
            ),
            Container(
              height:100,
              width:100,
              color: Colors.green,
              margin:EdgeInsets.all(20),

            ),
            Container(
                    height: 100,
                    width: 100,
                    color: Colors.blueAccent,
                    margin:EdgeInsets.fromLTRB(10, 20, 30, 40),
                    alignment: Alignment.bottomLeft, // Aligns the child Text widget
                    child: const Text(
                      "this is a",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  )

          ],
        )
        // floatingActionButton: FloatingActionButton(onPressed:() {},child:Icon(Icons.compost),backgroundColor:Colors.greenAccent,),
        //drawer:const Drawer(
        // child: Icon(Icons.logout),
        // ),
        );
  }
}
