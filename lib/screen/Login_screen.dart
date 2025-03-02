import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onDoubleTap: () {
              print("Inkwell");
            },
            child: Icon(Icons.mail, color: Colors.black),
          ),
          IconButton(
            onPressed: () {
              print("clicked a photo");
            },
            icon: Icon(Icons.camera_enhance_outlined),
            iconSize: 40,
          ),
          Text("text button"),
          TextButton(
            onPressed: () {
              print("clicked the text button");
            },
            child: Text("click me"),
          ),
          TextButton.icon(
            onPressed: () {
              print('Button pressed!');
            },
            icon: Icon(Icons.thumb_up, color: Colors.blue),
            label: Text(
              'Like',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          InkWell(
            onDoubleTap: () {
              print("it is tapped");
            },
            child: Icon(Icons.abc_outlined),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.phone,
              maxLength: 10,
              cursorColor:Colors.yellow,//used to give the colour to the cusrsor
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 10, color: Colors.black),
                hintText: "+91 phone number",
                prefixIcon:Icon(Icons.phone),
                suffixIcon:Icon(Icons.close),
                labelText: "phone number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
             obscureText:true,
             obscuringCharacter:'#',
             maxLength:10,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 10, color: Colors.black),
                hintText: "Password",
                labelText: "password",
                prefixIcon:Icon(Icons.key),
                suffixIcon:Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  
                ),//for box 
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("logging in");
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                const Color.fromARGB(255, 168, 55, 205),
              ),
            ),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}