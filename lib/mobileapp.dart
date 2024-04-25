import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/secondpage.dart';

class mobileapp extends StatelessWidget {
   mobileapp({super.key});

  final  emailController = TextEditingController();
  final companyController = TextEditingController();
  final typeController = TextEditingController();
  final webController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300),
          child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8hyHdlTzu8r3kV3hbpACLLZF9f0cUZFXe0w&s"),
                ),
                SizedBox(height: 20,),
                Text('BUSINESS ACCOUNT',
                  style: TextStyle(color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'E-mail',
                  ),),
                TextFormField(
                  controller: companyController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Company name ',
                  ),),
                TextFormField(
                  controller: typeController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'company type',
                  ),),
                TextFormField(
                  controller: webController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Website'
                  ),),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'password'
                  ),),
                SizedBox(height: 20,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent
                    ),

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>
                              secondpage(
                                email: emailController.text,
                                  Company : companyController.text,
                                type: typeController.text,
                                web: webController.text,
                                password: passwordController.text,

                              ),
                      ),
                      );

                      print(emailController.text);
                      print(companyController.text);
                      print(typeController.text);
                      print(webController.text);
                      print(passwordController.text);
                    }, child: Text('CREATE ACCOUNT')),
                SizedBox(height: 10,),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.black87),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}