import 'package:flutter/material.dart';

class Row_Col extends StatelessWidget {
  const Row_Col({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text("App Bar"),
          backgroundColor:Colors.blueGrey,
        ),
        body:Column(
          children: [
            Container(
              
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.center,
               mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                      height:100,
                      width:100,
                      color:Colors.orange,
                  
                  ),
                  Container(
                      height:100,
                      width:100,
                      color:Colors.white,
                  
                  ),
                  Container(
                      height:100,
                      width:100,
                      color:Colors.green,
                  
                  ),
                ],
              ),
            ),
             Text("It is coloumn"),
             Column(
                crossAxisAlignment:CrossAxisAlignment.center,
               mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                      height:100,
                      width:100,
                      color:Colors.orange,
                  
                  ),
                  Container(
                      height:100,
                      width:100,
                      color:Colors.white,
                  
                  ),
                  Container(
                      height:100,
                      width:100,
                      color:Colors.green,
                  
                  ),
                ],
              ),
            Text("It is stack"),
             Stack(

                children: [
                  Container(
                      height:100,
                      width:100,
                      color:const Color.fromARGB(255, 5, 19, 32),
                  
                  ),
                  Container(
                      height:50,
                      width:50,
                      color:const Color.fromARGB(147, 7, 161, 212),
                  
                  ),
                  Positioned(
                    bottom:10,
                    child: Container(
                        height:20,
                        width:20,

                        color:const Color.fromARGB(255, 221, 8, 8),
                    
                    ),
                  ),
                ],
              ), 
          ],
        ),


    );
  }
}