import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget{

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.code)
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children:[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email Address",
           
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passController,
              // obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            ElevatedButton(
              onPressed: (){
                print(emailController.text);
                print(passController.text);
              },
              child: Text("Submit")
            ),
          ]
        ),
      ),
    );
  }
}