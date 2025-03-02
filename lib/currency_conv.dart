//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class currency_conv extends StatefulWidget {
  const currency_conv({super.key});

  @override
  State<currency_conv> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<currency_conv> {
   double result = 0;
   final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    
   
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(60),
      ),
    );
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'Currency Converter',
    style: TextStyle(
      color: Colors.white, 
      fontSize: 20, 
      fontWeight: FontWeight.bold,
    ),
  ),
  backgroundColor: const Color.fromARGB(255, 207, 191, 16), // Slightly darker
  elevation: 3, // Increased shadow for better depth
  centerTitle: true,
  leading: IconButton( // Menu Icon
    icon: const Icon(Icons.menu, color: Colors.white),
    onPressed: () {
      // Handle menu click (e.g., open drawer)
    },
  ),
  actions: [
    IconButton( // Refresh Icon
      icon: const Icon(Icons.refresh, color: Colors.white),
      onPressed: () {
        // Handle refresh action
      },
    ),
  ],
),

      
      backgroundColor: const Color.fromARGB(255, 99, 143, 164),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
           '$result INR ',
            style:const TextStyle(fontSize: 60, fontWeight: FontWeight.w700,color:Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              // keyboardType:TextInputType.numberWithOptions(),
              controller: textEditingController,
              style: const TextStyle(
                color: Color.fromARGB(255, 3, 2, 2),
              ),
              cursorColor: const Color.fromARGB(255, 0, 0, 0),
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'please enter amount in USD',
                hintStyle: const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.monetization_on),
                prefixStyle: const TextStyle(
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  // print(textEditingController.text);
                  // print(double.parse(textEditingController.text) * 86);
                  setState(() {
                     result = double.parse(textEditingController.text) * 86.84;
                  });
                 
                 
                },
                style: const ButtonStyle(
                    elevation: WidgetStatePropertyAll(10),
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    fixedSize: WidgetStatePropertyAll(Size(200, 50)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ))),
                child: const Text('convert')),
          )
        ],
      )),
    );
  }
}


 
